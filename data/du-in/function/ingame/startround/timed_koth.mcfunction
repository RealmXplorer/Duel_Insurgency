tag @a add kothIngame

scoreboard objectives modify kothTimer displayname [{text:"KOTH Points ",bold:true,color:red}]

scoreboard objectives setdisplay sidebar kothTimer

execute unless score #main pylonsDestroyed matches 3 run schedule function du-in:music/ingame/koth 4s

bossbar set bossbar:gametimer players @a
team join Classic @a[tag=!spectating]
scoreboard players set @a[tag=!spectating] kothTimer 0
execute store result score #main maxTimer run scoreboard players get #main gameTimeMax
bossbar set bossbar:gametimer visible true

tag @a remove kothl