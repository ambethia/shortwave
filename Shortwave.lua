local f = CreateFrame("Frame")
f:SetScript("OnEvent", function(frame, event, ...)
  if event == "ACHIEVEMENT_EARNED" then
    local _, name, _, _, _, _, _, _, _, _, _, isGuildAch = GetAchievementInfo(select(1, ...))
    if not isGuildAch then
      BNSetCustomMessage(UnitName("player").." has earned \""..name.."\"!")
    end
  end
end)
f:RegisterEvent("ACHIEVEMENT_EARNED")
