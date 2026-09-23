function QuickAbandonFixedQuest(questID)
	if (questID and QuickAbandonFixedCheckKeybind() and QuickAbandonFixedQuestChecks(questID)) then
		C_QuestLog.SetSelectedQuest(questID)
		C_QuestLog.SetAbandonQuest()
		C_QuestLog.AbandonQuest()

		local questLink = GetQuestLink(questID) or tostring(questID)
		SendSystemMessage("Quest abandoned: " .. questLink)
		return true
	end

	return false
end

hooksecurefunc("QuestMapLogTitleButton_OnClick", function(self)
	QuickAbandonFixedQuest(self.questID);
end)

local ObjectiveTrackerBlockHeaderOnClick = ObjectiveTrackerBlockHeaderMixin.OnClick
ObjectiveTrackerBlockHeaderMixin.OnClick = function(self, mouseButton)
	local block = self:GetParent()
	if mouseButton == "LeftButton" and block and QuickAbandonFixedQuest(block.id) then
		return
	end

	return ObjectiveTrackerBlockHeaderOnClick(self, mouseButton)
end

function QuickAbandonFixedCheckKeybind()
	return IsAltKeyDown()
end

function QuickAbandonFixedQuestChecks(questID)
	return C_QuestLog.CanAbandonQuest(questID) and C_QuestLog.IsOnQuest(questID)
end
