tag @a add kothIngame
bossbar set minecraft:bluekoth players @a
bossbar set minecraft:redkoth players @a

execute if score #main tKothCap matches 1000 run scoreboard objectives modify kothTeamTimer displayname ["",{text:"KOTH Team Points ",bold:true,color:red},{text:"(of 1000)",color:gray}]
execute if score #main tKothCap matches 2000 run scoreboard objectives modify kothTeamTimer displayname ["",{text:"KOTH Team Points ",bold:true,color:red},{text:"(of 2000)",color:gray}]
execute if score #main tKothCap matches 3000 run scoreboard objectives modify kothTeamTimer displayname ["",{text:"KOTH Team Points ",bold:true,color:red},{text:"(of 3000)",color:gray}]
execute if score #main tKothCap matches 4000 run scoreboard objectives modify kothTeamTimer displayname ["",{text:"KOTH Team Points ",bold:true,color:red},{text:"(of 4000)",color:gray}]
execute if score #main tKothCap matches 5000 run scoreboard objectives modify kothTeamTimer displayname ["",{text:"KOTH Team Points ",bold:true,color:red},{text:"(of 5000)",color:gray}]

execute unless score #main pylonsDestroyed matches 3 run schedule function du-in:music/ingame/koth 4s

bossbar set bossbar:gametimer players @a
scoreboard players set @a[tag=!spectating] kothTimer 0
scoreboard objectives setdisplay sidebar kothTeamTimer
scoreboard players set Red kothTeamTimer 0
scoreboard players set Blue kothTeamTimer 0
execute store result score #main maxTimer run scoreboard players get #main gameTimeMax
bossbar set bossbar:gametimer visible true
tag @a remove kothl