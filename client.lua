RegisterCommand("unrackr", function(source, args, rawCommand)
    ar()
end, false)

RegisterCommand("unracks", function(source, args, rawCommand)
    shotgun()
end, false)

RegisterCommand("rackr", function(source, args, rawCommand)
    local ped = PlayerPedId()
	local name = GetPlayerName(_source)
	RemoveWeaponFromPed(ped, GetHashKey("WEAPON_CARBINERIFLE"), true)
    TriggerEvent('chatMessage', "Action", { 255, 26, 71 }, name .. " racked their rifle in their cruiser")
end, false)

RegisterCommand("racks", function(source, args, rawCommand)
    local ped = PlayerPedId()
	local name = GetPlayerName(_source)
	RemoveWeaponFromPed(ped, GetHashKey("WEAPON_PUMPSHOTGUN"), true)
    TriggerEvent('chatMessage', "Action", { 255, 26, 71 }, name .. " racked their shotgun in their cruiser")
end, false)

RegisterCommand("unrackrifle", function(source, args, rawCommand)
    ar()
end, false)

RegisterCommand("unrackshotgun", function(source, args, rawCommand)
    shotgun()
end, false)

RegisterCommand("rackrifle", function(source, args, rawCommand)
    local ped = PlayerPedId()
	local name = GetPlayerName(_source)
	RemoveWeaponFromPed(ped, GetHashKey("WEAPON_CARBINERIFLE"), true)
    TriggerEvent('chatMessage', "Action", { 255, 26, 71 }, name .. " racked their rifle in their cruiser")
end, false)

RegisterCommand("rackshotgun", function(source, args, rawCommand)
    local ped = PlayerPedId()
	local name = GetPlayerName(_source)
	RemoveWeaponFromPed(ped, GetHashKey("WEAPON_PUMPSHOTGUN"), true)
    TriggerEvent('chatMessage', "Action", { 255, 26, 71 }, name .. " racked their shotgun in their cruiser")
end, false)

function ar()
    local ped = PlayerPedId()
	local name = GetPlayerName(_source)
	GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), 1000, false)
    SetCurrentPedWeapon(ped, GetHashKey("WEAPON_CARBINERIFLE"), true)
	TriggerEvent('chatMessage', "Action", { 255, 26, 71 }, name .. " unracked their rifle in their cruiser")
end

function shotgun()
    local ped = PlayerPedId()
	local name = GetPlayerName(_source)
	GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), 1000, false)
    SetCurrentPedWeapon(ped, GetHashKey("WEAPON_PUMPSHOTGUN"), true)
	TriggerEvent('chatMessage', "Action", { 255, 26, 71 }, name .. " unracked their shotgun in their cruiser")
end