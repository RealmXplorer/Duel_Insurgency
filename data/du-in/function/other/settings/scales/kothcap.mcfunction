#Sets max number of KOTH points
execute as @a[tag=partyLeader,limit=1] if score @s kothScale matches 5.. run scoreboard players set #main kothCap 2000
execute as @a[tag=partyLeader,limit=1] if score @s kothScale matches 1 run scoreboard players set #main kothCap 3000
execute as @a[tag=partyLeader,limit=1] if score @s kothScale matches 2 run scoreboard players set #main kothCap 4000
execute as @a[tag=partyLeader,limit=1] if score @s kothScale matches 3 run scoreboard players set #main kothCap 5000
execute as @a[tag=partyLeader,limit=1] if score @s kothScale matches 4 run scoreboard players set #main kothCap 6000
#Cycle to first setting
execute as @a[tag=partyLeader,limit=1] if score @s kothScale matches 5.. run scoreboard players set @s kothScale 0

#Initialize thresholds
scoreboard players set #main kothGoal 100000
scoreboard players set #main kothHalf 100000

#Announce settings
execute if score #main kothCap matches 2000 run tellraw @a ["",{text:"KOTH Points ",bold:true,color:red},{text:"Max 2000",color:gray},{text:" (Default)",bold:true,color:green}]
execute if score #main kothCap matches 3000 run tellraw @a ["",{text:"KOTH Points ",bold:true,color:red},{text:"Max 3000 (Extended)",color:gray}]
execute if score #main kothCap matches 4000 run tellraw @a ["",{text:"KOTH Points ",bold:true,color:red},{text:"Max 4000 (Grueling)",color:gray}]
execute if score #main kothCap matches 5000 run tellraw @a ["",{text:"KOTH Points ",bold:true,color:red},{text:"Max 5000 (Pain)",color:gray}]
execute if score #main kothCap matches 6000 run tellraw @a ["",{text:"KOTH Points ",bold:true,color:red},{text:"Max 6000 (Hell)",color:gray}]

#Calculate thresholds
execute if score #main kothGoal >= #main kothCap store result score #main kothGoal run scoreboard players get #main kothCap
execute if score #main kothHalf >= #main kothCap store result score #main kothHalf run scoreboard players get #main kothCap
execute if score #main kothHalf = #main kothCap run scoreboard players operation #main kothHalf /= #main halfScore
execute if score #main kothGoal = #main kothCap run scoreboard players remove #main kothGoal 1000

#Set bossbar max to new max
#execute store result bossbar bossbar:koth max run scoreboard players get #main kothCap