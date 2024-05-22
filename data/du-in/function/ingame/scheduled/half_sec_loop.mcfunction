#kill @e[type=!player,type=!interaction,type=!marker,type=!armor_stand,nbt={inGround:1b}]
#execute as @e[type=arrow] run kill @s[nbt={inGround:1b}]
#execute as @e[type=trident] run kill @s[nbt={inGround:1b}]

#schedule function du-in:ingame/scheduled/half_sec_loop 10t