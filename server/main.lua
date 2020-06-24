ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('hifi', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	
	xPlayer.removeInventoryItem('hifi', 1)
	
	TriggerClientEvent('esx_hifi:place_hifi', source)
	xPlayer.showNotification(_U('put_hifi'))
end)

RegisterServerEvent('esx_hifi:remove_hifi')
AddEventHandler('esx_hifi:remove_hifi', function(coords)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.canCarryItem('hifi', 1) then
		xPlayer.addInventoryItem('hifi', 1)
	end
end)
