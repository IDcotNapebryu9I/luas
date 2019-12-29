Menu.Spacing()
Menu.Separator()
Menu.Spacing()

Menu.Text("Molotov circle")
Menu.Spacing()

Menu.Checkbox("Enable molotov circle", "bMolotovCircle__enable", true)
Menu.Spacing()

Menu.ColorPicker("Circle color", "cMolotovCircle__circle_color", 255, 255, 255, 255)
Menu.ColorPicker("Color in circle", "cMolotovCircle__in_circle_color", 0, 0, 0, 100)
Menu.ColorPicker("\"Fire\" text color", "cMolotovCircle__fire_color", 255, 0, 0, 255)

local Show = false
local VectorEnd = nil

local PlayerOrigin = nil

local vOrigin_Offset = Hack.GetOffset("DT_BaseEntity", "m_vecOrigin")

function InfernoStartburn(Event)
  local X = Event:GetInt("x")
  local Y = Event:GetInt("y")
  local Z = Event:GetInt("z")
  local Player = IEntityList.GetPlayer(IEngine.GetLocalPlayer())

  PlayerOrigin = Player:GetPropVector(vOrigin_Offset)
  VectorEnd = Vector.new(X, Y, Z)
end

function HandleEvent(Event)
  local EventName = Event:GetName()

  if EventName == "inferno_startburn" then
    Show = true

    InfernoStartburn(Event)
  end

  if EventName == "inferno_expire" then
    Show = false
  end
end

function PaintTraverse()
  if not Show then
    return
  end

  local FireColor = Menu.GetColor("cMolotovCircle__fire_color")
  local CircleColor = Menu.GetColor("cMolotovCircle__circle_color")
  local InCircleColor = Menu.GetColor("cMolotovCircle__in_circle_color")

  local ToScreen = Vector.new(0, 0, 0)

  if Math.WorldToScreen(VectorEnd, ToScreen) == true then
    Render.Text_TahomaBd(
      "Fire",
      ToScreen.x,      -- x
      ToScreen.y - 30, -- y
      18,              -- size
      FireColor,       -- color
      true,            -- center
      true             -- outline
    )
  
    Render.Circle3D(
      VectorEnd,
      100, -- points
      150, -- radius
      CircleColor
    )
  
    Render.CircleFilled3D(
      VectorEnd,
      100, -- points
      150, -- radius
      InCircleColor
    )
  end
end

Hack.RegisterCallback("PaintTraverse", PaintTraverse)
Hack.RegisterCallback("FireEventClientSideThink", HandleEvent)
