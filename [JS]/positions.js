/* [[ ALL FUNCTIONS CAN BE USE FOR THE PLAYER]] */


function savePositionOnClipboard(){
    let [ x , y, z ] = GetEntityCoords(PlayerPedId());
    SendNUIMessage(`{${x}, ${y}, ${z} }`);
};

function showPosition(){
    let [ x , y, z ] = GetEntityCoords(PlayerPedId());
    print(`{${x}, ${y}, ${z}}`)
}
