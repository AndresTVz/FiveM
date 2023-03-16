local classList = {
    "Compacts",
    "Sedans",
    "SUVs",
    "Coupes",
    "Muscle",
    "Sports Classics",
    "Sports",
    "Super",
    "Motorcycles",
    "Off-road",
    "Industrial",
    "Utility",
    "Vans",
    "Cycles",
    "Boats",
    "Helicopters",
    "Planes",
    "Service",
    "Emergency",
    "Military",
    "Commercial",
    "Trains",
    "Open Wheel",
}

_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("SPAWNER", "~b~Spawn by class")
_menuPool:Add(mainMenu)


function class(menu)
    local cars = GetAllVehicleModels()
    local pos = 0

    for j, class in pairs (classList) do
        local submenu = _menuPool:AddSubMenu(menu, class)
        for j, vehicle in pairs(cars) do
            if GetVehicleClassFromName(vehicle) == pos then
                submenu:AddItem(UIMenuItem.New(vehicle, GetLabelText(vehicle)))
            end
        end
        submenu.OnItemSelect = function(sender, item, index)
            spawnCar(item.Text["_Text"])
        end    
        pos = pos + 1
    end

end


class(mainMenu)
--[[ FirstItem(mainMenu) ]]
_menuPool:RefreshIndex()

Citizen.CreateThread(function()
   
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        --[[ The "e" button will activate the menu ]]
        if IsControlJustPressed(1, 51) then
            mainMenu:Visible(not mainMenu:Visible())
            SetCursorLocation(0.5, 0.5)
        end
    end
end)
