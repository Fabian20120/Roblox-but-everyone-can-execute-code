local InsertService = game:GetService("InsertService")

local ASSET_ID = 74637904087675

local success, model = pcall(function()
	return InsertService:LoadAsset(ASSET_ID)
end)

if success and model then
	local insertedModel = model:GetChildren()[1]
	if insertedModel then
		insertedModel.Parent = workspace
		insertedModel:SetPrimaryPartCFrame(CFrame.new(0, 10, 0))
	else
		warn("Das Asset enthält kein Kind.")
	end
else
	warn("Fehler beim Laden des Assets:", model)
end
