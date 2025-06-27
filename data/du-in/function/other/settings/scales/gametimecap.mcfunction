#Sets max time
execute as @a[tag=partyLeader,limit=1] if score @s gameTimeScale matches 3.. run scoreboard players set #main gameTimeMax 3600
execute as @a[tag=partyLeader,limit=1] if score @s gameTimeScale matches 1 run scoreboard players set #main gameTimeMax 6000
execute as @a[tag=partyLeader,limit=1] if score @s gameTimeScale matches 2 run scoreboard players set #main gameTimeMax 8400

#Cycles back to first setting
execute as @a[tag=partyLeader,limit=1] if score @s gameTimeScale matches 3.. run scoreboard players set @s gameTimeScale 0

#Initializes thresholds
#scoreboard players set #main timerGoal 100000
scoreboard players set #main timerHalf 100000

#Announce settings
execute if score #main gameTimeMax matches 3600 run tellraw @a ["",{text:"Game Time ",bold:true,color:gold},{text:"3 Minutes",color:gray},{text:" (Default)",bold:true,color:green}]
execute if score #main gameTimeMax matches 6000 run tellraw @a ["",{text:"Game Time ",bold:true,color:gold},{text:"5 Minutes (Longer)",color:gray}]
execute if score #main gameTimeMax matches 8400 run tellraw @a ["",{text:"Game Time ",bold:true,color:gold},{text:"7 Minutes (Longest)",color:gray}]
#execute if score #main gameTimeMax matches 12 run tellraw @a ["",{text:"Classic Kills ",bold:true,color:gold},{text:"Max 12 (Extended)",color:gray}]
#execute if score #main gameTimeMax matches 15 run tellraw @a ["",{text:"Classic Kills ",bold:true,color:gold},{text:"Max 15 (Prolonged)",color:gray}]

#Calculate thresholds based on selected kill cap.
#execute if score #main timerGoal >= #main gameTimeMax store result score #main timerGoal run scoreboard players get #main gameTimeMax
execute if score #main timerHalf >= #main gameTimeMax store result score #main timerHalf run scoreboard players get #main gameTimeMax

execute if score #main timerHalf = #main gameTimeMax run scoreboard players operation #main timerHalf /= #main halfScore
#execute if score #main timerGoal = #main gameTimeMax run scoreboard players remove #main timerGoal 2000

#Set Bossbar max based on selected number
execute store result bossbar bossbar:gametimer max run scoreboard players get #main gameTimeMax