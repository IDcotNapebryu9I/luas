Menu.Spacing()
Menu.Separator()
Menu.Spacing()

Menu.Text("Hitlogger")
Menu.Spacing()

Menu.Checkbox("Enable hitlogger", "bHitLogger__enable", true)
Menu.Spacing()

Menu.Text("Settings")
Menu.Spacing()

Menu.Checkbox("Reset on round restart", "bHitLogger__reset_on_restart", false)
Menu.Spacing()

Menu.SliderInt("Max hits", "iHitLogger__max_hits", 1, 10, "%.0f", 10)
Menu.Spacing()

Menu.SliderInt("X", "iHitLogger__x", 0, IEngine.GetScreenSize().x - 250, "%.0f", 200)
Menu.SliderInt("Y", "iHitLogger__y", 0, IEngine.GetScreenSize().y - 48, "%.0f", 300)
Menu.SliderInt("Rounding", "iHitLogger__rounding", 0, 30, "%.0f", 10)
Menu.Spacing()

Menu.ColorPicker("Background color", "cHitLogger__bg_color", 0, 0, 0, 150)
Menu.ColorPicker("Name color", "cHitLogger__text_name_color", 255, 255, 255, 255)
Menu.ColorPicker("Hit amount color", "cHitLogger__text_hit_color", 255, 255, 255, 255)
Menu.Spacing()

Menu.Text("Works only if Rounding < 6")
Menu.Checkbox("Enable rainbow bar", "bHitLogger__rainbow_bar", false)
Menu.SliderInt("Rainbow bar height", "iHitLogger__rainbow_bar_height", 1, 12, "%.0f", 10)
Menu.Spacing()

local Hits = {}

local function Rainbow(Type, r, g, b)
	local Strong = 120.0 / Utils:GetFps()

	if (Type == 0) then
		if (g < 255) then
			if (g + Strong > 255) then
				g = 255
			else
				g = g + Strong
			end
		else
			Type = Type + 1
		end
	elseif (Type == 1) then
		if (r > 0) then
			if (r - Strong < 0) then
				r = 0
			else
				r = r - Strong
			end
		else
			Type = Type + 1
		end
	elseif (Type == 2) then
		if (b < 255) then
			if (b + Strong > 255) then
				b = 255
			else
				b = b + Strong
			end
		else
			Type = Type + 1
		end
	elseif (Type == 3) then
		if (g > 0) then
			if (g - Strong < 0) then
				g = 0
			else
				g = g - Strong
			end
		else
			Type = Type + 1
		end
	elseif (Type == 4) then
		if (r < 255) then
			if (r + Strong > 255) then
				r = 255
			else
				r = r + Strong
			end
		else
			Type = Type + 1
		end
	elseif (Type == 5) then
		if (b > 0) then
			if (b - Strong < 0) then
				b = 0
			else
				b = b - Strong
			end
		else
			Type = 0
		end
	end

	return Type, r, g, b
end

local Type = { 0, 0, 0, 0 }
local R = { 255, 0, 0, 0 }
local G = { 0, 255, 0, 0 }
local B = { 0, 0, 255, 0 }

function PlayerHurt(Event)
  local attacker = Event:GetInt("attacker", 0)
  local AttackerId = IEngine.GetPlayerForUserID(attacker)

  if AttackerId == IEngine.GetLocalPlayer() then
    local damaged = Event:GetInt("dmg_health", 0)
    local userid = Event:GetInt("userid", 0)

    local EnemyId = IEngine.GetPlayerForUserID(userid)

    if EnemyId == IEngine.GetLocalPlayer() then
      return
    end

    local Enemy = IEntityList.GetPlayer(EnemyId)

    local PlayerInfo = Enemy:GetPlayerInfo()
    local name = PlayerInfo.szName

    if PlayerInfo.fakeplayer then
      name = "BOT " .. PlayerInfo.szName
    end

    local MaxHits = Menu.GetInt("iHitLogger__max_hits")

    Hits[#Hits + 1] = {
      damaged = damaged,
      name = name
    }

    if #Hits > MaxHits then
      local Temp = {}

      for i = 1, #Hits do
        Temp[i - 1] = Hits[i]
      end

      Hits = Temp
    end
  end
end

function PaintTraverse()
  if not Menu.GetBool("bHitLogger__enable") then
    return
  end

  if not Utils.IsLocal() then
    if #Hits ~= 0 then
      Hits = {}
    end
  end

  local RainbowBar = Menu.GetBool("bHitLogger__rainbow_bar")
  local RainbowBarHeight = Menu.GetInt("iHitLogger__rainbow_bar_height")
  local X = Menu.GetInt("iHitLogger__x")
  local Y = Menu.GetInt("iHitLogger__y")
  local Rounding = Menu.GetInt("iHitLogger__rounding")
  local BackgroundColor = Menu.GetColor("cHitLogger__bg_color")
  local NameTextColor = Menu.GetColor("cHitLogger__text_name_color")
  local HitTextColor = Menu.GetColor("cHitLogger__text_hit_color")

  local Height = 50

  for i = 1, #Hits do
    Height = Height + 20
  end

  Render.RectFilled2(
    X,               -- x1
    Y,               -- y1
    250,             -- width
    Height,          -- height
    BackgroundColor, -- color
    Rounding         -- rounding
  )

  if Rounding < 6 and RainbowBar then
    Type[1], R[1], G[1], B[1] = Rainbow(Type[1], R[1], G[1], B[1])
	  Type[4], R[4], G[4], B[4] = Rainbow(Type[4], R[4], G[4], B[4])

    Render.RectFilledMultiColor(
      X,                                 -- x1
      Y,                                 -- y1
      X + 250,                           -- x2
      Y + RainbowBarHeight,              -- y2
      Color.new(R[4], G[4], B[4], 255),  --  upper left
      Color.new(R[1], G[1], B[1], 255),  --  upper right
      Color.new(R[1], G[1], B[1], 255),  -- bottom right
      Color.new(R[4], G[4], B[4], 255)   -- bottom left
    )
  end

  local RenderNameX = X + 40
  local RenderY = Y + 15
  local RenderHitX = X + 215

  Render.Text_TahomaBd(
    "Name",      -- string
    RenderNameX, -- x
    RenderY,     -- y
    18,          -- size
    NameTextColor,
    true         -- center
  )

  Render.Text_TahomaBd(
    "Hit",       -- string
    RenderHitX,  -- x
    RenderY,     -- y
    18,          -- size
    HitTextColor,
    true         -- center
  )

  for i = 1, #Hits do
    local Value = Hits[i]

    RenderY = RenderY + 20

    Render.Text_TahomaBd(
      Value.name,   -- string
      X + 18,       -- x
      RenderY,      -- y
      18,           -- size
      NameTextColor,
      false         -- center
    )

    Render.Text_TahomaBd(
      tostring(Value.damaged), -- string
      RenderHitX,              -- x
      RenderY,                 -- y
      18,                      -- size
      HitTextColor,
      true                     -- center
    )
  end
end

function HandleEvent(Event)
  if not Utils.IsLocal() then
    return
  end

  if not Menu.GetBool("bHitLogger__enable") then
    return
  end

  if Event:GetName() == "round_start" and Menu.GetBool("bHitLogger__reset_on_restart") then
    Hits = {}
  end

  if Event:GetName() == "player_hurt" then
    PlayerHurt(Event)
  end
end

Hack.RegisterCallback("PaintTraverse", PaintTraverse)
Hack.RegisterCallback("FireEventClientSideThink", HandleEvent)
