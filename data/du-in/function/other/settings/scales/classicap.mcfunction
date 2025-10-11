#Sets max kills to end Classic game
execute as @a[tag=partyLeader,limit=1] if score @s killScale matches 5.. run scoreboard players set #main killCap 10
execute as @a[tag=partyLeader,limit=1] if score @s killScale matches 1 run scoreboard players set #main killCap 12
execute as @a[tag=partyLeader,limit=1] if score @s killScale matches 2 run scoreboard players set #main killCap 15
execute as @a[tag=partyLeader,limit=1] if score @s killScale matches 3 run scoreboard players set #main killCap 5
execute as @a[tag=partyLeader,limit=1] if score @s killScale matches 4 run scoreboard players set #main killCap 7
#Cycles back to first setting
execute as @a[tag=partyLeader,limit=1] if score @s killScale matches 5.. run scoreboard players set @s killScale 0

#Initializes thresholds
scoreboard players set #main testGoal 100
scoreboard players set #main testHalf 1000
scoreboard players set #main testDone 1000

#Announce settings
execute if score #main killCap matches 10 run tellraw @a [{text:"Classic Kills ",bold:true,color:gold},{text:"Max 10",color:gray},{text:" (Default)",bold:true,color:green}]
execute if score #main killCap matches 7 run tellraw @a [{text:"Classic Kills ",bold:true,color:gold},{text:"Max 7 (Reborn)",color:gray}]
execute if score #main killCap matches 5 run tellraw @a [{text:"Classic Kills ",bold:true,color:gold},{text:"Max 5 (Quick)",color:gray}]
execute if score #main killCap matches 12 run tellraw @a [{text:"Classic Kills ",bold:true,color:gold},{text:"Max 12 (Extended)",color:gray}]
execute if score #main killCap matches 15 run tellraw @a [{text:"Classic Kills ",bold:true,color:gold},{text:"Max 15 (Prolonged)",color:gray}]

#Calculate thresholds based on selected kill cap.
execute if score #main testGoal >= #main killCap store result score #main testGoal run scoreboard players get #main killCap
execute if score #main testDone >= #main killCap store result score #main testDone run scoreboard players get #main killCap
execute if score #main testHalf >= #main killCap store result score #main testHalf run scoreboard players get #main killCap
execute if score #main testHalf = #main killCap run scoreboard players operation #main testHalf /= #main halfScore
execute if score #main testGoal = #main killCap run scoreboard players remove #main testGoal 3
execute if score #main killCap = #main testDone run scoreboard players remove #main testDone 1

#Set Bossbar max based on selected number
#execute store result bossbar bossbar:classic max run scoreboard players get #main killCap