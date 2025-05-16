stopsound @s voice minecraft:goner.eye.spawn
tellraw @s [{text:"LET ME LEAVE, PLEASE!",color:red,bold:true}]
playsound minecraft:goner.eye.spawn voice @s
advancement revoke @s only du-in:void/interact_void