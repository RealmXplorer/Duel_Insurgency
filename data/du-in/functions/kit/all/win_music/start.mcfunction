execute if entity @s[tag=!halloween,tag=!christmas] run playsound minecraft:block.note_block.bit master @a[tag=!halloween,tag=!christmas,tag=!musicOff] ~ ~ ~ 10000 1
execute if entity @s[tag=halloween] run playsound minecraft:music.win.halloween master @a[tag=halloween,tag=!musicOff] ~ ~ ~ .4
execute if entity @s[tag=christmas] run playsound minecraft:music.win.christmas master @a[tag=christmas,tag=!musicOff] ~ ~ ~ .4