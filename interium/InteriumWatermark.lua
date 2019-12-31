Menu.Spacing()
Menu.Separator()
Menu.Spacing()

Menu.Text("Interium Watermark")
Menu.Spacing()

Menu.Checkbox("Enable watermark", "bInteriumWatermarkEnable", true)
Menu.Spacing()

Menu.Text("Settings")
Menu.Spacing()

Menu.Checkbox("Top line", "bInteriumWatermarkTopLine", true)
Menu.Checkbox("Bottom line", "bInteriumWatermarkBottomLine", false)
Menu.Spacing()

Menu.Text("Input watermark text")
Menu.InputText("Watermark", "sInteriumWatermark", "hardbass")
Menu.Spacing()

Menu.Button("Set text", "bInteriumWatermarkSet")

local Screen = IEngine.GetScreenSize()

local IsEnabled = Menu.GetBool("bInteriumWatermarkEnable")
local WatermarkText = Menu.GetString("sInteriumWatermark")

local dark = Color.new(0, 0, 0, 120)
local white = Color.new(255, 255, 255, 255)

-- Rainbow functions
--   thanks to N1ceL
local function AntiLag()
	return 120.0 / Utils:GetFps()
end

local function Rainbow(Type, r, g, b)
	local NewStrong = AntiLag()

	if (Type == 0) then
		if (g < 255) then
			if (g + NewStrong > 255) then
				g = 255
			else
				g = g + NewStrong
			end
		else
			Type = Type + 1
		end
	elseif (Type == 1) then
		if (r > 0) then
			if (r - NewStrong < 0) then
				r = 0
			else
				r = r - NewStrong
			end
		else
			Type = Type + 1
		end
	elseif (Type == 2) then
		if (b < 255) then
			if (b + NewStrong > 255) then
				b = 255
			else
				b = b + NewStrong
			end
		else
			Type = Type + 1
		end
	elseif (Type == 3) then
		if (g > 0) then
			if (g - NewStrong < 0) then
				g = 0
			else
				g = g - NewStrong
			end
		else
			Type = Type + 1
		end
	elseif (Type == 4) then
		if (r < 255) then
			if (r + NewStrong > 255) then
				r = 255
			else
				r = r + NewStrong
			end
		else
			Type = Type + 1
		end
	elseif (Type == 5) then
		if (b > 0) then
			if (b - NewStrong < 0) then
				b = 0
			else
				b = b - NewStrong
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

function PaintTraverse()
  if not Menu.GetBool("bInteriumWatermarkEnable") then
    return
  end

  if Menu.GetBool("bInteriumWatermarkSet") then
    WatermarkText = Menu.GetString("sInteriumWatermark")
  end

  Type[1], R[1], G[1], B[1] = Rainbow(Type[1], R[1], G[1], B[1])
	Type[4], R[4], G[4], B[4] = Rainbow(Type[4], R[4], G[4], B[4])

	local TextSize = Render.CalcTextSize_TahomaBd(
		WatermarkText, -- text
		18             -- size
	)

  -- background:
  --   main block
  Render.RectFilled(
    Screen.x - 110, -- x1
    10,             -- y1
    Screen.x - 10,  -- x2
    50,             -- y2
    dark            -- color
  )

  --   lines:
  --     up
  if Menu.GetBool("bInteriumWatermarkTopLine") then
    Render.RectFilledMultiColor(
      Screen.x - 108,                    -- x1
      12,                                -- y1
      Screen.x - 12,                     -- x2
      15,                                -- y2
      Color.new(R[4], G[4], B[4], 255),  --  upper left
      Color.new(R[1], G[1], B[1], 255),  --  upper right
      Color.new(R[1], G[1], B[1], 255),  -- bottom right
      Color.new(R[4], G[4], B[4], 255)   -- bottom left
    )
  end

  --     down
  if Menu.GetBool("bInteriumWatermarkBottomLine") then
    Render.RectFilledMultiColor(
      Screen.x - 108,                    -- x1
      48,                                -- y1
      Screen.x - 12,                     -- x2
      45,                                -- y2
      Color.new(R[4], G[4], B[4], 255),  --  upper left
      Color.new(R[1], G[1], B[1], 255),  --  upper right
      Color.new(R[1], G[1], B[1], 255),  -- bottom right
      Color.new(R[4], G[4], B[4], 255)   -- bottom left
    )
  end

  -- text
  Render.Text_TahomaBd(
    "INTERIUM",
    Screen.x - 60, -- x
    16,            -- y
    12,            -- size
    white,         -- color
    true           -- center
	)

  Render.Text_TahomaBd(
    WatermarkText,
    Screen.x - 60,   -- x
    26,              -- y
    18,              -- size
    white,           -- color
    true             -- center
  )
end

Hack.RegisterCallback("PaintTraverse", PaintTraverse)
