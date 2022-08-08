local win = require('window')
local wsp = game:GetService('Workspace');
local CostPetSlots = '0'
local Upgrades = win:MakeTab({Name = 'Upgrades'; Icon = 'rbxassetid://4483345998'; PremiumOnly = false})
Upgrades:AddToggle({
  Name = 'Auto Buy Damage - ' ..
      wsp.StatIncreaseShops.StatIncrease_Damage.GuiPart.Gui.PriceLabel.Text:split('>')[2]:split('<')[1] .. ' Gold';
  Default = false;
  Callback = function(Value)
    local args = {[1] = 'Damage'}
    game:GetService('ReplicatedStorage').Remotes.BuyStatIncrease:FireServer(unpack(args))
    task.wait()
  end;
})
Upgrades:AddButton({
  Name = 'Buy Damage - ' .. wsp.StatIncreaseShops.StatIncrease_Damage.GuiPart.Gui.PriceLabel.Text:split('>')[2]:split('<')[1] ..
      ' Gold';
  Default = false;
  Callback = function()
    local args = {[1] = 'Damage'}

    game:GetService('ReplicatedStorage').Remotes.BuyStatIncrease:FireServer(unpack(args))
  end;
})
Upgrades:AddToggle({
  Name = 'Auto Buy Speed - ' ..
      wsp.StatIncreaseShops.StatIncrease_Speed.GuiPart.Gui.PriceLabel.Text:split('>')[2]:split('<')[1] .. ' Gold';
  Default = false;
  Callback = function(Value)
    local args = {[1] = 'Speed'}
    game:GetService('ReplicatedStorage').Remotes.BuyStatIncrease:FireServer(unpack(args))
    task.wait()
  end;
})
Upgrades:AddButton({
  Name = 'Buy Speed - ' .. wsp.StatIncreaseShops.StatIncrease_Speed.GuiPart.Gui.PriceLabel.Text:split('>')[2]:split('<')[1] ..
      ' Gold';
  Default = false;
  Callback = function()
    local args = {[1] = 'Speed'}
    game:GetService('ReplicatedStorage').Remotes.BuyStatIncrease:FireServer(unpack(args))
    task.wait()
  end;
})
Upgrades:AddToggle({
  Name = 'Auto Buy Pet Slot - ' .. CostPetSlots;
  Default = false;
  Callback = function(Value)
    if Current == 0 and Value == true then
      local args = {[1] = 1}
      game:GetService('ReplicatedStorage').Remotes.BuyPetEquipSlot:FireServer(unpack(args))
    end
    if Current == 1 and Value == true then
      local args = {[1] = 2}
      game:GetService('ReplicatedStorage').Remotes.BuyPetEquipSlot:FireServer(unpack(args))
    end
    if Current == 2 and Value == true then
      local args = {[1] = 3}
      game:GetService('ReplicatedStorage').Remotes.BuyPetEquipSlot:FireServer(unpack(args))
    end
    task.wait()
  end;
})
Upgrades:AddButton({
  Name = 'Buy Pet Slot - ' .. CostPetSlots;
  Default = false;
  Callback = function()
    if Current == 0 and Value == true then
      local args = {[1] = 1}
      game:GetService('ReplicatedStorage').Remotes.BuyPetEquipSlot:FireServer(unpack(args))
    end
    if Current == 1 and Value == true then
      local args = {[1] = 2}
      game:GetService('ReplicatedStorage').Remotes.BuyPetEquipSlot:FireServer(unpack(args))
    end
    if Current == 2 and Value == true then
      local args = {[1] = 3}
      game:GetService('ReplicatedStorage').Remotes.BuyPetEquipSlot:FireServer(unpack(args))
    end
  end;
})
Upgrades:AddToggle({
  Name = 'Auto Buy Drop Collection Range - ' ..
      wsp.StatIncreaseShops.StatIncrease_DropCollectionRange.GuiPart.Gui.PriceLabel.Text:split('>')[2]:split('<')[1] ..
      ' Gold';
  Default = false;
  Callback = function(Value)
    local args = {[1] = 'DropCollectionRange'}

    game:GetService('ReplicatedStorage').Remotes.BuyStatIncrease:FireServer(unpack(args))
    task.wait()
  end;
})
Upgrades:AddButton({
  Name = 'Buy Drop Collection Range - ' ..
      wsp.StatIncreaseShops.StatIncrease_DropCollectionRange.GuiPart.Gui.PriceLabel.Text:split('>')[2]:split('<')[1] ..
      ' Gold';
  Default = false;
  Callback = function()
    local args = {[1] = 'DropCollectionRange'}

    game:GetService('ReplicatedStorage').Remotes.BuyStatIncrease:FireServer(unpack(args))
  end;
})
Upgrades:AddToggle({
  Name = 'Auto Buy Shiny Luck - ' ..
      wsp.StatIncreaseShops.StatIncrease_ShinyLuck.GuiPart.Gui.PriceLabel.Text:split('>')[2]:split('<')[1] .. ' Gold';
  Default = false;
  Callback = function(Value)
    local args = {[1] = 'ShinyLuck'}
    game:GetService('ReplicatedStorage').Remotes.BuyStatIncrease:FireServer(unpack(args))
    task.wait()
  end;
})
Upgrades:AddButton({
  Name = 'Buy Shiny Luck - ' ..
      wsp.StatIncreaseShops.StatIncrease_ShinyLuck.GuiPart.Gui.PriceLabel.Text:split('>')[2]:split('<')[1] .. ' Gold';
  Default = false;
  Callback = function()
    local args = {[1] = 'ShinyLuck'}
    game:GetService('ReplicatedStorage').Remotes.BuyStatIncrease:FireServer(unpack(args))
  end;
})
