local win = require('window')
local PrimaryPart = require('lp').Character.PrimaryPart
local Misc = win:MakeTab({Name = 'Misc'; Icon = 'rbxassetid://4483345998'; PremiumOnly = false})
Misc:AddButton({
  Name = 'Collect Eggs';
  Callback = function()
    local children = workspace.HiddenEggs:GetChildren()
    for idx = 1, #children do
      local val = children[idx].Position
      for i = 1, #children do
        PrimaryPart.CFrame = CFrame.new(val)
        task.wait(1 / 10)
      end
    end
  end;
})
Misc:AddButton({
  Name = 'Redeem Codes';
  Callback = function()
    local Redeem = game:GetService('ReplicatedStorage').Remotes.RedeemCode:FireServer();
    Redeem('WhoLetTheDogsOut')
    Redeem('ItsAlwaysADesert')
    Redeem('DuelingDragons')
    Redeem('FewAndFarBetween')
    Redeem('KlausWasHere')
    Redeem('ShinyHunting')
    Redeem('TooManyDrops')
    Redeem('TheGreatCodeInTheSky')
    Redeem('PillarsOfCreation')
    Redeem('TreeSauce')
    Redeem('TillFjalls')
    Redeem('Orion')
    Redeem('HorseWithNoName')
    Redeem('IfYouAintFirst')
    Redeem('MemoryLeak')
    Redeem('SecretCodeWasHere')
    Redeem('Taikatalvi')
    Redeem('Brrrrr')
    Redeem('Click')
    Redeem('4815162342')
    Redeem('Erdentempel')
    Redeem('FirstCodeEver')
    Redeem('Groupie')
    Redeem('NewCode')
  end;
})
