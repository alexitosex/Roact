local Player = game.Players.LocalPlayer
local Character = game.Players.LocalPlayer.Character or game.Players.ChildAdded:Wait()

local module = {}

function module:createAtributtesPlayer()
	self.Joined = Player:SetAttribute('Joined', false)
	self.Open = Player:SetAttribute('Open', false)
	self.Created = Player:SetAttribute('Created', false)
end

return module
