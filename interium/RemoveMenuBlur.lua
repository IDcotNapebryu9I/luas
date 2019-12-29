Menu.Spacing()
Menu.Separator()
Menu.Spacing()

Menu.Text("Remove Menu Blur")
Menu.Checkbox("Disable blur", "bDisableBlur", false)

local disable_blur = false

function RenderBlur()
  local panorama_disable_blur = ICvar.FindVar("@panorama_disable_blur")
  disable_blur = Menu.GetBool("bDisableBlur")

  panorama_disable_blur:SetBool(disable_blur)
end

function PaintTraverse()
  if (disable_blur == Menu.GetBool("bDisableBlur")) then
    return
  end

  RenderBlur()
end

Hack.RegisterCallback("PaintTraverse", RenderBlur)
