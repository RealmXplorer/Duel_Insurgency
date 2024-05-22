#Set max number of team KOTH points
execute as @a[tag=partyLeader,limit=1] if score @s tKothScale matches 5.. run scoreboard players set #main tKothCap 2000
execute as @a[tag=partyLeader,limit=1] if score @s tKothScale matches 1 run scoreboard players set #main tKothCap 3000
execute as @a[tag=partyLeader,limit=1] if score @s tKothScale matches 2 run scoreboard players set #main tKothCap 4000
execute as @a[tag=partyLeader,limit=1] if score @s tKothScale matches 3 run scoreboard players set #main tKothCap 5000
execute as @a[tag=partyLeader,limit=1] if score @s tKothScale matches 4 run scoreboard players set #main tKothCap 6000
#Cycle to first setting
execute as @a[tag=partyLeader,limit=1] if score @s tKothScale matches 5.. run scoreboard players set @s tKothScale 0

#Initialize threshold
scoreboard players set #main tKothGoal 100000

#Announce setting
execute if score #main tKothCap matches 2000 run tellraw @a ["",{"text":"Team KOTH Points ","bold":true,"color":"red"},{"text":"Max 2000","color":"gray"},{"text":" (Default)","bold":true,"color":"green"}]
execute if score #main tKothCap matches 3000 run tellraw @a ["",{"text":"Team KOTH Points ","bold":true,"color":"red"},{"text":"Max 3000 (Extended)","color":"gray"}]
execute if score #main tKothCap matches 4000 run tellraw @a ["",{"text":"Team KOTH Points ","bold":true,"color":"red"},{"text":"Max 4000 (Grueling)","color":"gray"}]
execute if score #main tKothCap matches 5000 run tellraw @a ["",{"text":"Team KOTH Points ","bold":true,"color":"red"},{"text":"Max 5000 (Pain)","color":"gray"}]
execute if score #main tKothCap matches 6000 run tellraw @a ["",{"text":"Team KOTH Points ","bold":true,"color":"red"},{"text":"Max 6000 (Hell)","color":"gray"}]

#Calculate threshold
execute if score #main tKothGoal >= #main tKothCap store result score #main tKothGoal run scoreboard players get #main tKothCap
execute if score #main tKothGoal = #main tKothCap run scoreboard players remove #main tKothGoal 1000

#Set new max bossbar value
execute store result bossbar minecraft:redkoth max run scoreboard players get #main tKothCap
execute store result bossbar minecraft:bluekoth max run scoreboard players get #main tKothCap