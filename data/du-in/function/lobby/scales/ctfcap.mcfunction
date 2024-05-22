#Sets new max number of flags to be captured
execute as @a[tag=partyLeader,limit=1] if score @s ctfScale matches 5.. run scoreboard players set #main ctfMax 3
execute as @a[tag=partyLeader,limit=1] if score @s ctfScale matches 1 run scoreboard players set #main ctfMax 5
execute as @a[tag=partyLeader,limit=1] if score @s ctfScale matches 2 run scoreboard players set #main ctfMax 7
execute as @a[tag=partyLeader,limit=1] if score @s ctfScale matches 3 run scoreboard players set #main ctfMax 1
execute as @a[tag=partyLeader,limit=1] if score @s ctfScale matches 4 run scoreboard players set #main ctfMax 2
#Cycles back to first setting
execute as @a[tag=partyLeader,limit=1] if score @s ctfScale matches 5.. run scoreboard players set @s ctfScale 0

#Intializes Threshold
scoreboard players set #main ctfClose 100

#Announce settings
execute if score #main ctfMax matches 3 run tellraw @a ["",{"text":"Flag Captures ","bold":true,"color":"gold"},{"text":"Max 3","color":"gray"},{"text":" (Default)","bold":true,"color":"green"}]
execute if score #main ctfMax matches 5 run tellraw @a ["",{"text":"Flag Captures ","bold":true,"color":"gold"},{"text":"Max 5 (Longer)","color":"gray"}]
execute if score #main ctfMax matches 7 run tellraw @a ["",{"text":"Flag Captures ","bold":true,"color":"gold"},{"text":"Max 7 (Extended)","color":"gray"}]
execute if score #main ctfMax matches 1 run tellraw @a ["",{"text":"Flag Captures ","bold":true,"color":"gold"},{"text":"Max 1 (First to Flag)","color":"gray"}]
execute if score #main ctfMax matches 2 run tellraw @a ["",{"text":"Flag Captures ","bold":true,"color":"gold"},{"text":"Max 2 (Best 2 of 3)","color":"gray"}]

#Calculate threshold
execute if score #main ctfClose >= #main ctfMax store result score #main ctfClose run scoreboard players get #main ctfMax
execute if score #main ctfMax = #main ctfClose run scoreboard players remove #main ctfClose 1

#Set new bossbar maxes
execute store result bossbar du-in:bluectf max run scoreboard players get #main ctfMax
execute store result bossbar du-in:redctf max run scoreboard players get #main ctfMax