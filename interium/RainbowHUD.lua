local Cooldown = 12 -- in ms
local Counter = 0
local Value = 0
local Values = {
  [0] = 5,
  [1] = 6,
  [2] = 7,
  [3] = 8,
  [4] = 9,
  [5] = 3,
  [6] = 4
}

function DoRepeat()
  if Utils.IsLocal() then
    if Counter < GetTickCount() then     
      Value = Value + 1

      if Value > 6 then
        Value = 0
      end

      ICvar.FindVar("cl_hud_color"):SetInt(Values[Value])

      Counter = GetTickCount() + Cooldown
    end  
  end
end

Hack.RegisterCallback("PaintTraverse", DoRepeat)