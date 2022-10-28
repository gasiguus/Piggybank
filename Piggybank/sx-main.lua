ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
ESX.RegisterUsableItem('piggybank', function(source)

local xPlayer = ESX.GetPlayerFromId(source)
local summa = math.random(0,2500)

xPlayer.removeInventoryItem('piggybank', 1)
xPlayer.addMoney(summa)
if summa > 0 then
ESX.ShowNotification('You examined the piggybank and found ~g~'..summa..' €')
elseif summa == 0 then
ESX.ShowNotification('You examined the piggybank which was empty. You found ~g~0€')
end
end)
