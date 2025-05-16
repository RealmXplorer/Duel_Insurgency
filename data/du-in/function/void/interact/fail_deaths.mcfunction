stopsound @s voice minecraft:goner.eye.spawn
tellraw @s [{text:"You and your friends have died too much, return here later.",color:red,bold:true}]
playsound minecraft:goner.eye.spawn voice @s
advancement revoke @s only du-in:void/interact_void