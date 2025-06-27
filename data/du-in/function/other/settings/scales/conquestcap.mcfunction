#Sets max number of conquest points
execute as @a[tag=partyLeader,limit=1] if score @s conqScale matches 5.. run scoreboard players set #main cqCap 10000
execute as @a[tag=partyLeader,limit=1] if score @s conqScale matches 1 run scoreboard players set #main cqCap 12000
execute as @a[tag=partyLeader,limit=1] if score @s conqScale matches 2 run scoreboard players set #main cqCap 15000
execute as @a[tag=partyLeader,limit=1] if score @s conqScale matches 3 run scoreboard players set #main cqCap 5000
execute as @a[tag=partyLeader,limit=1] if score @s conqScale matches 4 run scoreboard players set #main cqCap 7000
#Cycles back to first setting
execute as @a[tag=partyLeader,limit=1] if score @s conqScale matches 5.. run scoreboard players set @s conqScale 0

#Initializes thresholds
scoreboard players set #main cqGoal 10000000
scoreboard players set #main cqHalf 10000000

#Announce settings
execute if score #main cqCap matches 10000 run tellraw @a ["",{text:"Conquest Points ",bold:true,color:gold},{text:"Max 10000",color:gray},{text:" (Default)",bold:true,color:green}]
execute if score #main cqCap matches 7000 run tellraw @a ["",{text:"Conquest Points ",bold:true,color:gold},{text:"Max 7000 (Battle)",color:gray}]
execute if score #main cqCap matches 5000 run tellraw @a ["",{text:"Conquest Points ",bold:true,color:gold},{text:"Max 5000 (Skirmish)",color:gray}]
execute if score #main cqCap matches 12000 run tellraw @a ["",{text:"Conquest Points ",bold:true,color:gold},{text:"Max 12000 (Prolonged Battle)",color:gray}]
execute if score #main cqCap matches 15000 run tellraw @a ["",{text:"Conquest Points ",bold:true,color:gold},{text:"Max 15000 (War)",color:gray}]

#Calculate thresholds
execute if score #main cqGoal >= #main cqCap store result score #main cqGoal run scoreboard players get #main cqCap
execute if score #main testDone >= #main cqCap store result score #main testDone run scoreboard players get #main cqCap
execute if score #main cqHalf >= #main cqCap store result score #main cqHalf run scoreboard players get #main cqCap
execute if score #main cqHalf = #main cqCap run scoreboard players operation #main cqHalf /= #main halfScore
execute if score #main cqGoal = #main cqCap run scoreboard players remove #main cqGoal 2000

#Set bossbar maxes to new values
execute store result bossbar conquest:blue max run scoreboard players get #main cqCap
execute store result bossbar conquest:red max run scoreboard players get #main cqCap