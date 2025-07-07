#Summon beam
summon block_display ~ ~0.5 ~ {height:30f,Tags:["devilsKnife","unsetTime","projectile","mapSpecific"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,30f,1f]},block_state:{Name:"minecraft:stripped_pale_oak_log"}}
execute at @e[type=block_display,tag=devilsKnife] run particle minecraft:end_rod ~ ~ ~ 0.25 30 0.25 0 500

scoreboard players set @e[type=block_display,tag=devilsKnife,tag=unsetTime] jevilTimer 10
tag @e[type=block_display,tag=devilsKnife,tag=unsetTime] remove unsetTime

#Sound
playsound minecraft:jevil.scythe_burst master @a ~ ~ ~ 1 1 1

#Kill scythe
kill @s
