#kill @e[type=!player,type=!interaction,type=!marker,type=!armor_stand,nbt={inGround:1b}]
execute if entity @e[type=arrow] run kill @e[type=arrow,nbt={inGround:1b}]
execute if entity @e[type=trident] run kill @e[type=trident,nbt={inGround:1b}]

schedule function du-in:ingame/scheduled/half_sec_loop 10t