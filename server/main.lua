ESX = nil
xSound = exports.xsound

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

RegisterServerEvent('esx_hifi:play_music')
AddEventHandler('esx_hifi:play_music', function(idMusic, url, volume, pos)
	xSound:PlayUrlPos(-1,idMusic, url, volume, pos)
	xSound:Distance(-1, idMusic, Config.distance)
end)

RegisterServerEvent('esx_hifi:stop_music')
AddEventHandler('esx_hifi:stop_music', function(idMusic)
	xSound:Destroy(-1, boomBoxName)
end)

RegisterServerEvent('esx_hifi:set_volume')
AddEventHandler('esx_hifi:set_volume', function(idMusic, volume)
	xSound:setVolume(idMusic, volume)
end)
