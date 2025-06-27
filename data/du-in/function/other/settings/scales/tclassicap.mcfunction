#Sets new max number of team classsic kills
execute as @a[tag=partyLeader,limit=1] if score @s tKillScale matches 5.. run scoreboard players set #main tFFAGoal 25
execute as @a[tag=partyLeader,limit=1] if score @s tKillScale matches 1 run scoreboard players set #main tFFAGoal 35
execute as @a[tag=partyLeader,limit=1] if score @s tKillScale matches 2 run scoreboard players set #main tFFAGoal 50
execute as @a[tag=partyLeader,limit=1] if score @s tKillScale matches 3 run scoreboard players set #main tFFAGoal 15
execute as @a[tag=partyLeader,limit=1] if score @s tKillScale matches 4 run scoreboard players set #main tFFAGoal 20
#Cycle back to first setting
execute as @a[tag=partyLeader,limit=1] if score @s tKillScale matches 5.. run scoreboard players set @s tKillScale 0

#Initialize threshold
scoreboard players set #main tFFAClose 1000

#Announce settings
execute if score #main tFFAGoal matches 25 run tellraw @a ["",{text:"Team Classic Kills ",bold:true,color:gold},{text:"Max 25",color:gray},{text:" (Default)",bold:true,color:green}]
execute if score #main tFFAGoal matches 35 run tellraw @a ["",{text:"Team Classic Kills ",bold:true,color:gold},{text:"Max 35 (Extended)",color:gray}]
execute if score #main tFFAGoal matches 20 run tellraw @a ["",{text:"Team Classic Kills ",bold:true,color:gold},{text:"Max 20 (Faster)",color:gray}]
execute if score #main tFFAGoal matches 50 run tellraw @a ["",{text:"Team Classic Kills ",bold:true,color:gold},{text:"Max 50 (World War: Duel)",color:gray}]
execute if score #main tFFAGoal matches 15 run tellraw @a ["",{text:"Team Classic Kills ",bold:true,color:gold},{text:"Max 15 (Quick)",color:gray}]

#Calculate threshold
execute if score #main tFFAClose >= #main tFFAGoal store result score #main tFFAClose run scoreboard players get #main tFFAGoal
execute if score #main tFFAClose = #main tFFAGoal run scoreboard players remove #main tFFAClose 5

#Set max bossbar to new value
execute store result bossbar minecraft:classicblue max run scoreboard players get #main tFFAGoal
execute store result bossbar minecraft:classicred max run scoreboard players get #main tFFAGoal