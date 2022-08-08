-- Load UI
local Orion = require('orion-ui')

-- Load Tabs
local Tabs = {'Main'; 'Upgrades'; 'Player'; 'Teleports'; 'Misc'};
for _, o in pairs(Tabs) do require('tabs/' .. o) end

-- Init Window
Orion:Init()
