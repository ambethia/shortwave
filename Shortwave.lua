local f = CreateFrame("Frame")
f:SetScript("OnEvent", function(frame, event, ...)
  if event == "ACHIEVEMENT_EARNED" then
    BNSetCustomMessage(UnitName("player").." has earned \""..select(2, GetAchievementInfo(select(1, ...))).."\"!")
  end
end)
f:RegisterEvent("ACHIEVEMENT_EARNED")
