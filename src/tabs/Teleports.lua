local win = require('window')
local Teleport = win:MakeTab({Name = 'Teleports'; Icon = 'rbxassetid://4483345998'; PremiumOnly = false})
local PrimaryPart = require('lp').Character.PrimaryPart
local Positions = {
  ['Spawn'] = CFrame.new(-0.4, 5.56, -57.33);
  ['Meadow'] = CFrame.new(1.39, 5.56, -277.14);
  ['Forest'] = CFrame.new(9.9, 5.56, -418);
  ['Desert'] = CFrame.new(163.19, 5.56, -427.84);
  ['Arctic'] = CFrame.new(167.67, 5.56, -272);
  ['Beach'] = CFrame.new(171.62, 5.56, -104.23);
  ['Mountains'] = CFrame.new(174.63, 25.29, 46.63);
  ['Jungle'] = CFrame.new(-40, 5.56, 72.34);
  ['Grotto'] = CFrame.new(-266.59, 5.56, 146.12);
  ['Cave'] = CFrame.new(-110.78, 5.56, -49.72);
}
for name, val in pairs(Positions) do
  Teleport:AddButton({Name = name; Callback = function() PrimaryPart.CFrame = val end})
end
