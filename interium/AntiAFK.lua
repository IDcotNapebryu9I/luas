Menu.Spacing()
Menu.Separator()
Menu.Spacing()

Menu.Text("Anti-AFK")
Menu.Spacing()

Menu.Checkbox("Enable anti-AFK", "bAntiAFK__enable", true)
Menu.Spacing()

local IsEnabled = Menu.GetBool("bAntiAFK__enable")

function PaintTraverse()
  if Menu.GetBool("bAntiAFK__enable") == IsEnabled then
    return
  end

  IsEnabled = Menu.GetBool("bAntiAFK__enable")

  if IsEnabled then
    IEngine.ExecuteClientCmd("+left; +right")
  else
    IEngine.ExecuteClientCmd("-left; -right")
  end
end

Hack.RegisterCallback("PaintTraverse", PaintTraverse)
