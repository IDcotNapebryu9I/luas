Menu.Spacing()
Menu.Separator()
Menu.Spacing()

Menu.Text("Righthand switcher")
Menu.Spacing()

Menu.Checkbox("Enable righthand switcher", "bRighthandSwitcher__enable", true)
Menu.Spacing()

local LastWeaponType = nil

function PaintTraverse()
  if not Menu.GetBool("bRighthandSwitcher__enable") then
    return
  end

  if not Utils.IsLocalAlive() then
    return
  end

  local SelfId = IEngine.GetLocalPlayer()
  local Self = IEntityList.GetPlayer(SelfId)
  local Weapon = Self:GetActiveWeapon()
  local WeaponData = Weapon:GetWeaponData()
  local WeaponType = WeaponData.iWeaponType

  if WeaponType == LastWeaponType then
    return
  end

  if WeaponType ~= 0 and LastWeaponType ~= 0 then
    return
  end

  LastWeaponType = WeaponType

  local RighthandVar = ICvar.FindVar("cl_righthand")
  local RighthandValue = RighthandVar:GetInt()
  local ToSet = 0

  if RighthandValue == 0 then
    ToSet = 1
  end

  RighthandVar:SetInt(ToSet)
end

Hack.RegisterCallback("PaintTraverse", PaintTraverse)
