execute if entity @s[tag=!halloween,tag=!christmas] run playsound minecraft:music.win.generic record @a[tag=!halloween,tag=!christmas,tag=!musicOff,tag=!lobby] ~ ~ ~ 10000 1
execute if entity @s[tag=halloween] run playsound minecraft:music.win.halloween record @a[tag=halloween,tag=!musicOff,tag=!lobby] ~ ~ ~ .4
execute if entity @s[tag=christmas] run playsound minecraft:music.win.christmas record @a[tag=christmas,tag=!musicOff,tag=!lobby] ~ ~ ~ .4