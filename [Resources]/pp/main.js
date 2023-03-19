


function addNotification(text){
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, false)
}

function savePositionOnClipboard(){
    let [ x , y, z ] = GetEntityCoords(PlayerPedId());
    SendNUIMessage(`{${x}, ${y}, ${z} }`);
};

function showPosition(){
    let [ x , y, z ] = GetEntityCoords(PlayerPedId());
    print(`{${x}, ${y}, ${z}}`)
}


RegisterCommand("pos", () => {

    showPosition()

});






