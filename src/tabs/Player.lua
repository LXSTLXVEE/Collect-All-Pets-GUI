local win = require('window')
local Player = win:MakeTab({Name = 'Player'; Icon = 'rbxassetid://4483345998'; PremiumOnly = false})
local PrimaryPart = require('lp').Character.PrimaryPart
Player:AddTextbox({
  Name = 'Teleport to Player';
  Default = 'Player Name';
  TextDisappear = true;
  Callback = function(Value) PrimaryPart.CFrame = game:GetService('Players')[Value].Character.HumanoidRootPart.CFrame end;
})
Player:AddSlider({
  Name = 'Walkspeed';
  Min = 16.75;
  Max = 100;
  Default = 58.735;
  Color = Color3.fromRGB(255, 255, 255);
  Increment = 1;
  ValueName = 'Walkspeed';
  Callback = function(Value) game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = Value end;
})
Player:AddSlider({
  Name = 'Jumppower';
  Min = 10;
  Max = 100;
  Default = 55;
  Color = Color3.fromRGB(255, 255, 255);
  Increment = 1;
  ValueName = 'Jumppower';
  Callback = function(Value)
    game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpHeight = Value
  end;
})
