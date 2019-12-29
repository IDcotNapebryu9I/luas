IGameEventListener.AddEvent("player_say", false)

function HandleEvent(Event)
  if Event:GetName() ~= "player_say" then
    return
  end

  local userid = Event:GetInt("userid")
  local PlayerId = IEngine.GetPlayerForUserID(userid)

  if PlayerId == IEngine.GetLocalPlayer() then
    return
  end

  local text = Event:GetString("text")

  IEngine.ExecuteClientCmd("say " .. text)
end

Hack.RegisterCallback("FireEventClientSideThink", HandleEvent)
