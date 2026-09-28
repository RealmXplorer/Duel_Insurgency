#Sets max time
execute as @a[tag=partyLeader,limit=1] if score @s gameTimeScale matches 3.. run scoreboard players set #main gameTimeMax 3600
execute as @a[tag=partyLeader,limit=1] if score @s gameTimeScale matches 1 run scoreboard players set #main gameTimeMax 6000
execute as @a[tag=partyLeader,limit=1] if score @s gameTimeScale matches 2 run scoreboard players set #main gameTimeMax 8400

#Cycles back to first setting
execute as @a[tag=partyLeader,limit=1] if score @s gameTimeScale matches 3.. run scoreboard players set @s gameTimeScale 0

#Announce settings
execute if score #main gameTimeMax matches 3600 run tellraw @a [{text:"Game Time ",bold:true,color:gold},{text:"3 Minutes",color:gray},{text:" (Default)",bold:true,color:green}]
execute if score #main gameTimeMax matches 6000 run tellraw @a [{text:"Game Time ",bold:true,color:gold},{text:"5 Minutes (Longer)",color:gray}]
execute if score #main gameTimeMax matches 8400 run tellraw @a [{text:"Game Time ",bold:true,color:gold},{text:"7 Minutes (Longest)",color:gray}]

#Calculate thresholds based on selected kill cap.
execute store result score #main timerHalf run scoreboard players get #main gameTimeMax
scoreboard players operation #main timerHalf /= #main halfScore

execute store result score #main timerClose run scoreboard players get #main gameTimeMax
scoreboard players remove #main timerClose 1000

#Save into storage
execute store result storage du-in:gamemode timer.max int 1 run scoreboard players get #main gameTimeMax
execute store result storage du-in:gamemode timer.half int 1 run scoreboard players get #main timerHalf
execute store result storage du-in:gamemode timer.close int 1 run scoreboard players get #main timerClose

#Set Bossbar max based on selected number
execute store result bossbar bossbar:gametimer max run scoreboard players get #main gameTimeMax