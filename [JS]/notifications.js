
/* [[ ALL OF NOTIFICATIONS , ALERTS, MESSAGES, ETC ]] */


function addNotification(text){
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, false)
}
