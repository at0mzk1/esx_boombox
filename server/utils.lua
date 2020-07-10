function hasPermissions(xPlayer)
    local playerGroup = xPlayer.getGroup()
    print(xPlayer.name .. "has group: " .. playerGroup)
    if playerGroup == "admin" then
        return true
    end
	return false
end