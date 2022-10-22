local blips = {

	{title="Xero SuperCharger", colour=1, id=198, scale=1.2, x = 1513.97, y = 779.85, z = 77.44},
    {title="Xero SuperCharger", colour=1, id=198, scale=1.2, x = -60.98, y = -1747.41, z = 29.35},
    {title="Xero SuperCharger", colour=1, id=198, scale=1.2, x = 932.41, y = 2715.88, z = 40.48},
    {title="Xero SuperCharger", colour=1, id=198, scale=1.2, x = 2780.81, y = 3454.29, z = 55.53},
    {title="Xero SuperCharger", colour=1, id=198, scale=1.2, x = 138.33, y = 6637.7, z = 31.6},

}
      
Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, info.scale)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
	    BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)