#Set death timer max
execute as @a[tag=partyLeader,limit=1] if score @s dtScale matches 3.. run scoreboard players set #main dtCap 101
execute as @a[tag=partyLeader,limit=1] if score @s dtScale matches 1 run scoreboard players set #main dtCap 141
execute as @a[tag=partyLeader,limit=1] if score @s dtScale matches 2 run scoreboard players set #main dtCap 61
#Cycle to first setting
execute as @a[tag=partyLeader,limit=1] if score @s dtScale matches 3.. run scoreboard players set @s dtScale 0

#Announce seting
execute if score #main dtCap matches 101 run tellraw @a ["",{"text":"Team Death Timer ","bold":true,"color":"gold"},{"text":"5 seconds","color":"gray"},{"text":" (Default)","bold":true,"color":"green"}]
execute if score #main dtCap matches 141 run tellraw @a ["",{"text":"Team Death Timer ","bold":true,"color":"gold"},{"text":"7 seconds","color":"gray"}]
execute if score #main dtCap matches 61 run tellraw @a ["",{"text":"Team Death Timer ","bold":true,"color":"gold"},{"text":"3 seconds","color":"gray"}]

