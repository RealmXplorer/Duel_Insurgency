#execute if entity @s[tag=!halloween,tag=!christmas] run playsound minecraft:music.win.generic record @a[tag=!halloween,tag=!christmas,tag=!musicOff,tag=!lobby] ~ ~ ~ 10000 1
playsound minecraft:music.win.generic record @s[tag=!halloween,tag=!christmas,tag=!musicOff,tag=!lobby] ~ ~ ~ 10000 1 1

playsound minecraft:music.win.halloween record @s[tag=halloween,tag=!musicOff,tag=!lobby] ~ ~ ~ 10000 1 1
playsound minecraft:music.win.christmas record @s[tag=christmas,tag=!musicOff,tag=!lobby] ~ ~ ~ 10000 1 1

# execute if entity @s[tag=halloween] run playsound minecraft:music.win.halloween record @a[tag=halloween,tag=!musicOff,tag=!lobby] ~ ~ ~ .4
# execute if entity @s[tag=christmas] run playsound minecraft:music.win.christmas record @a[tag=christmas,tag=!musicOff,tag=!lobby] ~ ~ ~ .4