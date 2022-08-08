local win = require('window')
local wsp = game:GetService('Workspace');
local PrimaryPart = require('lp').Character.PrimaryPart

local Main = win:MakeTab({Name = 'Main'; Icon = 'rbxassetid://4483345998'; PremiumOnly = false})

Main:AddDropdown({
  Name = 'Egg Option';
  Default = '';
  Options = {'Common Egg'; 'Uncommon Egg'; 'Rare Egg'; 'Epic Egg'; 'Legendary Egg'; 'Prodigious Egg'};
  Callback = function(Value)
    if Value == 'Common Egg' then eggg = 1 end
    if Value == 'Uncommon Egg' then eggg = 2 end
    if Value == 'Rare Egg' then eggg = 3 end
    if Value == 'Epic Egg' then eggg = 4 end
    if Value == 'Legendary Egg' then eggg = 5 end
    if Value == 'Prodigious Egg' then eggg = 6 end
  end;
})
local SG = game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui
Main:AddToggle({
  Name = 'Auto Open Egg';
  Default = false;
  Callback = function(Value)
    if SG.Hatcher.Visible == true then
      SG.Hatcher.Visible = false
      SG.Hatcher:FindFirstChildOfClass('LocalScript'):Destroy()
    end
    game:GetService('ReplicatedStorage').Remotes.BuyEgg:FireServer(eggg)
    task.wait()
  end;
})
Main:AddButton({
  Name = 'Open Egg Once';
  Callback = function() game:GetService('ReplicatedStorage').Remotes.BuyEgg:FireServer(eggg) end;
})
Main:AddButton({
  Name = 'Anti Egg Open UI';
  Callback = function()
    SG.Hatcher.Visible = false
    SG.Hatcher:FindFirstChildOfClass('LocalScript'):Destroy()
  end;
})
Main:AddToggle({
  Name = 'Auto Complete Quests';
  Default = false;
  Callback = function(Value)
    game:GetService('ReplicatedStorage').Remotes.ClaimQuestReward:FireServer()
    local QuestTask = game:GetService('Players').LocalPlayer.QuestTask.Value -- The type of quest
    local QuestArea = game:GetService('Players').LocalPlayer.QuestArea.Value -- The area the quest is in
    local CurrentArea = game:GetService('Players').LocalPlayer.Area.Value -- current players area
    local Meadowpos = CFrame.new(1.39, 5.56, -277.14)
    local Forestpos = CFrame.new(9.9, 5.56, -418)
    local Desertpos = CFrame.new(163.19, 5.56, -427.84)
    local Arcticpos = CFrame.new(167.67, 5.56, -272)
    local Beachpos = CFrame.new(171.62, 5.56, -104.23)
    local Mountainspos = CFrame.new(174.63, 25.29, 46.63)
    local Junglepos = CFrame.new(-40, 5.56, 72.34)
    local Grottopos = CFrame.new(-266.59, 5.56, 146.12)
    if QuestTask == 1 and QuestArea == 0 then
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
    end
    if QuestTask == 2 and QuestArea == 0 then
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
    end
    if QuestTask == 3 and QuestArea == 0 then
      if CurrentArea == 1 then
        PrimaryPart.CFrame = Meadowpos
        task.wait(1 / 5)
        if PrimaryPart.CFrame ~= Meadowpos then PrimaryPart.CFrame = Meadowpos end
      end
      if CurrentArea == 2 then
        PrimaryPart.CFrame = Forestpos
        task.wait(1 / 5)
        if PrimaryPart.CFrame ~= Forestpos then PrimaryPart.CFrame = Forestpos end
      end
      if CurrentArea == 3 then
        PrimaryPart.CFrame = Desertpos
        task.wait(1 / 5)
        if PrimaryPart.CFrame ~= Desertpos then PrimaryPart.CFrame = Desertpos end
      end
      if CurrentArea == 4 then
        PrimaryPart.CFrame = Arcticpos
        task.wait(1 / 5)
        if PrimaryPart.CFrame ~= Arcticpos then PrimaryPart.CFrame = Arcticpos end
      end
      if CurrentArea == 5 then
        PrimaryPart.CFrame = Beachpos
        task.wait(1 / 5)
        if PrimaryPart.CFrame ~= Beachpos then PrimaryPart.CFrame = Beachpos end
      end
      if CurrentArea == 6 then
        PrimaryPart.CFrame = Mountainspos
        task.wait(1 / 5)
        if PrimaryPart.CFrame ~= Mountainspos then PrimaryPart.CFrame = Mountainspos end
      end
      if CurrentArea == 7 then
        PrimaryPart.CFrame = Junglepos
        task.wait(1 / 5)
        if PrimaryPart.CFrame ~= Junglepos then PrimaryPart.CFrame = Junglepos end
      end
      if CurrentArea == 8 then
        PrimaryPart.CFrame = Grottopos
        task.wait(1 / 5)
        if PrimaryPart.CFrame ~= Grottopos then PrimaryPart.CFrame = Grottopos end
      end
    end
    if QuestTask == 1 and QuestArea == 1 then
      PrimaryPart.CFrame = Meadowpos
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Meadowpos then PrimaryPart.CFrame = Meadowpos end
    end
    if QuestTask == 2 and QuestArea == 1 then
      PrimaryPart.CFrame = Meadowpos
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Meadowpos then PrimaryPart.CFrame = Meadowpos end
    end
    if QuestTask == 3 and QuestArea == 1 then
      PrimaryPart.CFrame = Meadowpos
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Meadowpos then PrimaryPart.CFrame = Meadowpos end
    end
    if QuestTask == 1 and QuestArea == 2 then
      PrimaryPart.CFrame = Forestpos
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Forestpos then PrimaryPart.CFrame = Forestpos end
    end
    if QuestTask == 2 and QuestArea == 2 then
      PrimaryPart.CFrame = Forestpos
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Forestpos then PrimaryPart.CFrame = Forestpos end
    end
    if QuestTask == 3 and QuestArea == 2 then
      PrimaryPart.CFrame = Forestpos
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Forestpos then PrimaryPart.CFrame = Forestpos end
    end
    if QuestTask == 1 and QuestArea == 3 then
      PrimaryPart.CFrame = Desertpos
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Desertpos then PrimaryPart.CFrame = Desertpos end
    end
    if QuestTask == 2 and QuestArea == 3 then
      PrimaryPart.CFrame = Desertpos
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Desertpos then PrimaryPart.CFrame = Desertpos end
    end
    if QuestTask == 3 and QuestArea == 3 then
      PrimaryPart.CFrame = Desertpos
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Desertpos then PrimaryPart.CFrame = Desertpos end
    end
    if QuestTask == 1 and QuestArea == 4 then
      PrimaryPart.CFrame = Arcticpos
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Arcticpos then PrimaryPart.CFrame = Arcticpos end
    end
    if QuestTask == 2 and QuestArea == 4 then
      PrimaryPart.CFrame = Arcticpos
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Arcticpos then PrimaryPart.CFrame = Arcticpos end
    end
    if QuestTask == 3 and QuestArea == 4 then
      PrimaryPart.CFrame = Arcticpos
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Arcticpos then PrimaryPart.CFrame = Arcticpos end
    end
    if QuestTask == 1 and QuestArea == 5 then
      PrimaryPart.CFrame = Beachpos
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Beachpos then PrimaryPart.CFrame = Beachpos end
    end
    if QuestTask == 2 and QuestArea == 5 then
      PrimaryPart.CFrame = Beachpos
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Beachpos then PrimaryPart.CFrame = Beachpos end
    end
    if QuestTask == 3 and QuestArea == 5 then
      PrimaryPart.CFrame = Beachpos
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Beachpos then PrimaryPart.CFrame = Beachpos end
    end
    if QuestTask == 1 and QuestArea == 6 then
      PrimaryPart.CFrame = Mountainspos
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Mountainspos then PrimaryPart.CFrame = Mountainspos end
    end
    if QuestTask == 2 and QuestArea == 6 then
      PrimaryPart.CFrame = Mountainspos
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Mountainspos then PrimaryPart.CFrame = Mountainspos end
    end
    if QuestTask == 3 and QuestArea == 6 then
      PrimaryPart.CFrame = Mountainspos
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Mountainspos then PrimaryPart.CFrame = Mountainspos end
    end
    if QuestTask == 1 and QuestArea == 7 then
      PrimaryPart.CFrame = Junglepos
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Junglepos then PrimaryPart.CFrame = Junglepos end
    end
    if QuestTask == 2 and QuestArea == 7 then
      PrimaryPart.CFrame = Junglepos
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Junglepos then PrimaryPart.CFrame = Junglepos end
    end
    if QuestTask == 3 and QuestArea == 7 then
      PrimaryPart.CFrame = Junglepos
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Junglepos then PrimaryPart.CFrame = Junglepos end
    end
    if QuestTask == 1 and QuestArea == 8 then
      PrimaryPart.CFrame = Grottopos
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Grottopos then PrimaryPart.CFrame = Grottopos end
    end
    if QuestTask == 2 and QuestArea == 8 then
      PrimaryPart.CFrame = Grottopos
      for _, obj in pairs(wsp.Drops:GetDescendants()) do
        if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
      end
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Grottopos then PrimaryPart.CFrame = Grottopos end
    end
    if QuestTask == 3 and QuestArea == 8 then
      PrimaryPart.CFrame = Grottopos
      task.wait(1 / 5)
      if PrimaryPart.CFrame ~= Grottopos then PrimaryPart.CFrame = Grottopos end
    end
    task.wait()
  end;
})
Main:AddToggle({
  Name = 'Auto Collect Quests';
  Default = false;
  Callback = function(Value)
    game:GetService('ReplicatedStorage').Remotes.ClaimQuestReward:FireServer()
    task.wait()
  end;
})
Main:AddToggle({
  Name = 'Auto Collect Drops';
  Default = false;
  Callback = function(Value)
    for _, obj in pairs(game.Workspace.Drops:GetDescendants()) do
      if obj.Name == 'Base' then PrimaryPart.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z) end
    end
    task.wait()
  end;
})
