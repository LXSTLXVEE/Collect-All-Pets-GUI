local Orion = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local X = Orion:MakeWindow({
    Name = "Cryptid Hub - Collect All Pets!",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "CryptidHub"
})
local Pos = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
local CostDamage = Workspace.StatIncreaseShops.StatIncrease_Damage.GuiPart.Gui.PriceLabel.Text:split(">")[2]:split("<")[1]
local CostSpeed = Workspace.StatIncreaseShops.StatIncrease_Speed.GuiPart.Gui.PriceLabel.Text:split(">")[2]:split("<")[1]
local CostPetSlots = "0"
local CostCollectRange = Workspace.StatIncreaseShops.StatIncrease_DropCollectionRange.GuiPart.Gui.PriceLabel.Text:split(">")[2]:split("<")[1]
local CostShinyLuck = Workspace.StatIncreaseShops.StatIncrease_ShinyLuck.GuiPart.Gui.PriceLabel.Text:split(">")[2]:split("<")[1]
local Main = X:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Upgrades = X:MakeTab({
    Name = "Upgrades",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Player = X:MakeTab({
    Name = "Player",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Teleport = X:MakeTab({
    Name = "Teleports",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Misc = X:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
Main:AddDropdown({
    Name = "Egg Option",
    Default = "",
    Options = {"Common Egg", "Uncommon Egg", "Rare Egg", "Epic Egg", "Legendary Egg", "Prodigious Egg"},
    Callback = function(Value)
        if Value == "Common Egg" then
            eggg = 1
        end
        if Value == "Uncommon Egg" then
            eggg = 2
        end
        if Value == "Rare Egg" then
            eggg = 3
        end
        if Value == "Epic Egg" then
            eggg = 4
        end
        if Value == "Legendary Egg" then
            eggg = 5
        end
        if Value == "Prodigious Egg" then
            eggg = 6
        end
    end
})
local SG = game:GetService('Players').LocalPlayer.PlayerGui.ScreenGui
Main:AddToggle({
    Name = "Auto Open Egg",
    Default = false,
    Callback = function(Value)
        if SG.Hatcher.Visible == true then
            SG.Hatcher.Visible = false
            SG.Hatcher:FindFirstChildOfClass('LocalScript'):Destroy()
        end
        game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(eggg)
        task.wait()
    end
})
Main:AddButton({
    Name = "Open Egg Once",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(eggg)
    end
})
Main:AddButton({
    Name = "Anti Egg Open UI",
    Callback = function()
        SG.Hatcher.Visible = false
        SG.Hatcher:FindFirstChildOfClass('LocalScript'):Destroy()
    end
})
Main:AddToggle({
    Name = "Auto Complete Quests",
    Default = false,
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
        local Grottopos =  CFrame.new(-266.59, 5.56, 146.12)
        if QuestTask == 1 and QuestArea == 0 then
            for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
        end
        if QuestTask == 2 and QuestArea == 0 then
            for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
        end
        if QuestTask == 3 and QuestArea == 0 then
            if CurrentArea == 1 then
                Pos.CFrame = Meadowpos
                task.wait(1/5)
                if Pos.CFrame ~= Meadowpos then
                    Pos.CFrame = Meadowpos
                end
            end
            if CurrentArea == 2 then
                Pos.CFrame = Forestpos
                task.wait(1/5)
                if Pos.CFrame ~= Forestpos then
                    Pos.CFrame = Forestpos
                end
            end
            if CurrentArea == 3 then
                Pos.CFrame = Desertpos
                task.wait(1/5)
                if Pos.CFrame ~= Desertpos then
                    Pos.CFrame = Desertpos
                end
            end
            if CurrentArea == 4 then
                Pos.CFrame = Arcticpos
                task.wait(1/5)
                if Pos.CFrame ~= Arcticpos then
                    Pos.CFrame = Arcticpos
                end
            end
            if CurrentArea == 5 then
                Pos.CFrame = Beachpos
                task.wait(1/5)
                if Pos.CFrame ~= Beachpos then
                    Pos.CFrame = Beachpos
                end
            end
            if CurrentArea == 6 then
                Pos.CFrame = Mountainspos
                task.wait(1/5)
                if Pos.CFrame ~= Mountainspos then
                    Pos.CFrame = Mountainspos
                end
            end
            if CurrentArea == 7 then
                Pos.CFrame = Junglepos
                task.wait(1/5)
                if Pos.CFrame ~= Junglepos then
                    Pos.CFrame = Junglepos
                end
            end
            if CurrentArea == 8 then
                Pos.CFrame = Grottopos
                task.wait(1/5)
                if Pos.CFrame ~= Grottopos then
                    Pos.CFrame = Grottopos
                end
            end
        end
        if QuestTask == 1 and QuestArea == 1 then
            Pos.CFrame = Meadowpos
            for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
            task.wait(1/5)
            if Pos.CFrame ~= Meadowpos then
                Pos.CFrame = Meadowpos
            end
        end
        if QuestTask == 2 and QuestArea == 1 then
            Pos.CFrame = Meadowpos
            for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
            task.wait(1/5)
            if Pos.CFrame ~= Meadowpos then
                Pos.CFrame = Meadowpos
            end
        end
        if QuestTask == 3 and QuestArea == 1 then
            Pos.CFrame = Meadowpos
            task.wait(1/5)
            if Pos.CFrame ~= Meadowpos then
                Pos.CFrame = Meadowpos
            end
        end
        if QuestTask == 1 and QuestArea == 2 then
            Pos.CFrame = Forestpos
            for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
            task.wait(1/5)
            if Pos.CFrame ~= Forestpos then
                Pos.CFrame = Forestpos
            end
        end
        if QuestTask == 2 and QuestArea == 2 then
            Pos.CFrame = Forestpos
            for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
            task.wait(1/5)
            if Pos.CFrame ~= Forestpos then
                Pos.CFrame = Forestpos
            end
        end
        if QuestTask == 3 and QuestArea == 2 then
            Pos.CFrame = Forestpos
            task.wait(1/5)
            if Pos.CFrame ~= Forestpos then
                Pos.CFrame = Forestpos
            end
        end
        if QuestTask == 1 and QuestArea == 3 then
            Pos.CFrame = Desertpos
			for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
            task.wait(1/5)
            if Pos.CFrame ~= Desertpos then
                Pos.CFrame = Desertpos
            end
        end
		if QuestTask == 2 and QuestArea == 3 then
            Pos.CFrame = Desertpos
            for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
            task.wait(1/5)
            if Pos.CFrame ~= Desertpos then
                Pos.CFrame = Desertpos
            end
		end
        if QuestTask == 3 and QuestArea == 3 then
            Pos.CFrame = Desertpos
            task.wait(1/5)
            if Pos.CFrame ~= Desertpos then
                Pos.CFrame = Desertpos
            end
        end
        if QuestTask == 1 and QuestArea == 4 then
            Pos.CFrame = Arcticpos
			for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
            task.wait(1/5)
            if Pos.CFrame ~= Arcticpos then
                Pos.CFrame = Arcticpos
            end
        end
        if QuestTask == 2 and QuestArea == 4 then
            Pos.CFrame = Arcticpos
			for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
            task.wait(1/5)
            if Pos.CFrame ~= Arcticpos then
                Pos.CFrame = Arcticpos
            end
        end
        if QuestTask == 3 and QuestArea == 4 then
            Pos.CFrame = Arcticpos
            task.wait(1/5)
            if Pos.CFrame ~= Arcticpos then
                Pos.CFrame = Arcticpos
            end
        end
        if QuestTask == 1 and QuestArea == 5 then
            Pos.CFrame = Beachpos
            for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
            task.wait(1/5)
            if Pos.CFrame ~= Beachpos then
                Pos.CFrame = Beachpos
            end
        end
        if QuestTask == 2 and QuestArea == 5 then
            Pos.CFrame = Beachpos
            for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
            task.wait(1/5)
            if Pos.CFrame ~= Beachpos then
                Pos.CFrame = Beachpos
            end
        end
        if QuestTask == 3 and QuestArea == 5 then
            Pos.CFrame = Beachpos
            task.wait(1/5)
            if Pos.CFrame ~= Beachpos then
                Pos.CFrame = Beachpos
            end
        end
        if QuestTask == 1 and QuestArea == 6 then
            Pos.CFrame = Mountainspos
            for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
            task.wait(1/5)
            if Pos.CFrame ~= Mountainspos then
                Pos.CFrame = Mountainspos
            end
        end
        if QuestTask == 2 and QuestArea == 6 then
            Pos.CFrame = Mountainspos
            for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
            task.wait(1/5)
            if Pos.CFrame ~= Mountainspos then
                Pos.CFrame = Mountainspos
            end
        end
        if QuestTask == 3 and QuestArea == 6 then
            Pos.CFrame = Mountainspos
            task.wait(1/5)
            if Pos.CFrame ~= Mountainspos then
                Pos.CFrame = Mountainspos
            end
        end
        if QuestTask == 1 and QuestArea == 7 then
            Pos.CFrame = Junglepos
            for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
            task.wait(1/5)
            if Pos.CFrame ~= Junglepos then
                Pos.CFrame = Junglepos
            end
        end
        if QuestTask == 2 and QuestArea == 7 then
            Pos.CFrame = Junglepos
            for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
            task.wait(1/5)
            if  Pos.CFrame ~= Junglepos then
                Pos.CFrame = Junglepos
            end
        end
        if QuestTask == 3 and QuestArea == 7 then
            Pos.CFrame = Junglepos
            task.wait(1/5)
            if Pos.CFrame ~= Junglepos then
                Pos.CFrame = Junglepos
            end
        end
        if QuestTask == 1 and QuestArea == 8 then
            Pos.CFrame = Grottopos
            for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
            task.wait(1/5)
            if Pos.CFrame ~= Grottopos then
                Pos.CFrame = Grottopos
            end
        end
        if QuestTask == 2 and QuestArea == 8 then
            Pos.CFrame = Grottopos
            for _, obj in pairs(Workspace.Drops:GetDescendants()) do
			    if obj.Name == 'Base' then
				    Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			    end
            end
            task.wait(1/5)
            if Pos.CFrame ~= Grottopos then
                Pos.CFrame = Grottopos
            end
        end
        if QuestTask == 3 and QuestArea == 8 then
            Pos.CFrame = Grottopos
            task.wait(1/5)
            if Pos.CFrame ~= Grottopos then
                Pos.CFrame = Grottopos
            end
        end
        task.wait()
    end
})
Main:AddToggle({
    Name = "Auto Collect Quests",
    Default = false,
    Callback = function(Value)
        game:GetService("ReplicatedStorage").Remotes.ClaimQuestReward:FireServer()
        task.wait()
    end
})
Main:AddToggle({
    Name = "Auto Collect Drops",
    Default = false,
    Callback = function(Value)
        for _, obj in pairs(game.Workspace.Drops:GetDescendants()) do
			if obj.Name == "Base" then
				Pos.CFrame = CFrame.new(obj.Position.X, obj.Position.Y, obj.Position.Z)
			end
		end
	    task.wait()
    end
})
Upgrades:AddToggle({
    Name = "Auto Buy Damage - " .. Workspace.StatIncreaseShops.StatIncrease_Damage.GuiPart.Gui.PriceLabel.Text:split(">")[2]:split("<")[1] .. " Gold",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = "Damage"
        }
        game:GetService("ReplicatedStorage").Remotes.BuyStatIncrease:FireServer(unpack(args))        
        task.wait()
    end
})
Upgrades:AddButton({
    Name = "Buy Damage - " .. Workspace.StatIncreaseShops.StatIncrease_Damage.GuiPart.Gui.PriceLabel.Text:split(">")[2]:split("<")[1] .. " Gold",
    Default = false,
    Callback = function()
        local args = {
            [1] = "Damage"
        }

        game:GetService("ReplicatedStorage").Remotes.BuyStatIncrease:FireServer(unpack(args))        
    end
})
Upgrades:AddToggle({
    Name = "Auto Buy Speed - " .. Workspace.StatIncreaseShops.StatIncrease_Speed.GuiPart.Gui.PriceLabel.Text:split(">")[2]:split("<")[1] .. " Gold",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = "Speed"
        }
        game:GetService("ReplicatedStorage").Remotes.BuyStatIncrease:FireServer(unpack(args))
        task.wait()
    end
})
Upgrades:AddButton({
    Name = "Buy Speed - " .. Workspace.StatIncreaseShops.StatIncrease_Speed.GuiPart.Gui.PriceLabel.Text:split(">")[2]:split("<")[1] .. " Gold",
    Default = false,
    Callback = function()
        local args = {
            [1] = "Speed"
        }
        game:GetService("ReplicatedStorage").Remotes.BuyStatIncrease:FireServer(unpack(args))
        task.wait()
    end
})
Upgrades:AddToggle({
    Name = "Auto Buy Pet Slot - " .. CostPetSlots,
    Default = false,
    Callback = function(Value)
        if Current == 0 and Value == true then
            local args = {
                [1] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.BuyPetEquipSlot:FireServer(unpack(args))                
        end
        if Current == 1 and Value == true then
            local args = {
                [1] = 2
            }
            game:GetService("ReplicatedStorage").Remotes.BuyPetEquipSlot:FireServer(unpack(args))
        end
        if Current == 2 and Value == true then
            local args = {
                [1] = 3
            }
            game:GetService("ReplicatedStorage").Remotes.BuyPetEquipSlot:FireServer(unpack(args))
        end
        task.wait()
    end
})
Upgrades:AddButton({
    Name = "Buy Pet Slot - " .. CostPetSlots,
    Default = false,
    Callback = function()
        if Current == 0 and Value == true then
            local args = {
                [1] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.BuyPetEquipSlot:FireServer(unpack(args))                
        end
        if Current == 1 and Value == true then
            local args = {
                [1] = 2
            }
            game:GetService("ReplicatedStorage").Remotes.BuyPetEquipSlot:FireServer(unpack(args))
        end
        if Current == 2 and Value == true then
            local args = {
                [1] = 3
            }
            game:GetService("ReplicatedStorage").Remotes.BuyPetEquipSlot:FireServer(unpack(args))
        end
    end,
})
Upgrades:AddToggle({
    Name = "Auto Buy Drop Collection Range - " .. Workspace.StatIncreaseShops.StatIncrease_DropCollectionRange.GuiPart.Gui.PriceLabel.Text:split(">")[2]:split("<")[1] .. " Gold",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = "DropCollectionRange"
        }
        
        game:GetService("ReplicatedStorage").Remotes.BuyStatIncrease:FireServer(unpack(args))
        task.wait()
    end
})
Upgrades:AddButton({
    Name = "Buy Drop Collection Range - " .. Workspace.StatIncreaseShops.StatIncrease_DropCollectionRange.GuiPart.Gui.PriceLabel.Text:split(">")[2]:split("<")[1] .. " Gold",
    Default = false,
    Callback = function()
        local args = {
            [1] = "DropCollectionRange"
        }
        
        game:GetService("ReplicatedStorage").Remotes.BuyStatIncrease:FireServer(unpack(args))
    end
})
Upgrades:AddToggle({
    Name = "Auto Buy Shiny Luck - " .. Workspace.StatIncreaseShops.StatIncrease_ShinyLuck.GuiPart.Gui.PriceLabel.Text:split(">")[2]:split("<")[1] .. " Gold",
    Default = false,
    Callback = function(Value)
        local args = {
            [1] = "ShinyLuck"
        }
        game:GetService("ReplicatedStorage").Remotes.BuyStatIncrease:FireServer(unpack(args))
        task.wait()
    end
})
Upgrades:AddButton({
    Name = "Buy Shiny Luck - " .. Workspace.StatIncreaseShops.StatIncrease_ShinyLuck.GuiPart.Gui.PriceLabel.Text:split(">")[2]:split("<")[1] .. " Gold",
    Default = false,
    Callback = function()
        local args = {
            [1] = "ShinyLuck"
        }
        game:GetService("ReplicatedStorage").Remotes.BuyStatIncrease:FireServer(unpack(args))
    end
})
Player:AddTextbox({
	Name = "Teleport to Player",
	Default = "Player Name",
	TextDisappear = true,
	Callback = function(Value)
		Pos = game:GetService('Players')[Value].Character.HumanoidRootPart.CFrame
	end	  
})
Player:AddSlider({
    Name = "Walkspeed",
    Min = 16.75,
    Max = 100,
    Default = 58.735,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Walkspeed",
    Callback = function(Value)
        game:GetService('Players').LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end
})
Player:AddSlider({
    Name = "Jumppower",
    Min = 10,
    Max = 100,
    Default = 55,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Jumppower",
    Callback = function(Value)
        game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = Value
    end
})
Teleport:AddButton({
    Name = "Spawn",
    Callback = function(Value)
        Pos.CFrame = CFrame.new(-0.4, 5.56, -57.33)
    end
})
Teleport:AddButton({
    Name = "Meadow",
    Callback = function(Value)
        Pos.CFrame = CFrame.new(1.39, 5.56, -277.14)
    end
})
Teleport:AddButton({
    Name = "Forest",
    Callback = function(Value)
        Pos.CFrame = CFrame.new(9.9, 5.56, -418)
    end
})
Teleport:AddButton({
    Name = "Desert",
    Callback = function(Value)
        Pos.CFrame = CFrame.new(163.19, 5.56, -427.84)
    end
})
Teleport:AddButton({
    Name = "Arctic",
    Callback = function(Value)
        Pos.CFrame = CFrame.new(167.67, 5.56, -272)
    end
})
Teleport:AddButton({
    Name = "Beach",
    Callback = function(Value)
        Pos.CFrame = CFrame.new(171.62, 5.56, -104.23)
    end
})
Teleport:AddButton({
    Name = "Mountains",
    Callback = function(Value)
        Pos.CFrame = CFrame.new(174.63, 25.29, 46.63)
    end
})
Teleport:AddButton({
    Name = "Jungle",
    Callback = function(Value)
        Pos.CFrame = CFrame.new(-40, 5.56, 72.34)
    end
})
Teleport:AddButton({
    Name = "Grotto",
    Callback = function(Value)
        Pos.CFrame = CFrame.new(-266.59, 5.56, 146.12)
    end
})
Teleport:AddButton({
    Name = "Cave",
    Callback = function(Value)
        Pos.CFrame = CFrame.new(-110.78, 5.56, -49.72)
    end
})
Misc:AddButton({
    Name = "Collect Eggs",
    Callback = function()
        local children = workspace.HiddenEggs:GetChildren()
        for i = 1, #children do
            var = children[i].Position
            for i = 1, #children do
                Pos.CFrame = CFrame.new(var)
                task.wait(1/10)
            end
        end
    end
})
Misc:AddButton({
    Name = "Redeem Codes",
    Callback = function()
        local Redeem = game:GetService("ReplicatedStorage").Remotes.RedeemCode:FireServer
        Redeem("WhoLetTheDogsOut")
        Redeem("ItsAlwaysADesert")
        Redeem("DuelingDragons")
        Redeem("FewAndFarBetween")
        Redeem("KlausWasHere")
        Redeem("ShinyHunting")
        Redeem("TooManyDrops")
        Redeem("TheGreatCodeInTheSky")
        Redeem("PillarsOfCreation")
        Redeem("TreeSauce")
        Redeem("TillFjalls")
        Redeem("Orion")
        Redeem("HorseWithNoName")
        Redeem("IfYouAintFirst")
        Redeem("MemoryLeak")
        Redeem("SecretCodeWasHere")
        Redeem("Taikatalvi")
        Redeem("Brrrrr")
        Redeem("Click")
        Redeem("4815162342")
        Redeem("Erdentempel")
        Redeem("FirstCodeEver")
        Redeem("Groupie")
        Redeem("NewCode")
    end
})
Orion:Init()