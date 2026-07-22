stopsound @s voice du-in:goner.eye.spawn
tellraw @s [{text:"You and your friends have died too much, return here later.",color:red,bold:true}]
playsound du-in:goner.eye.spawn voice @s
advancement revoke @s only du-in:void/interact_void