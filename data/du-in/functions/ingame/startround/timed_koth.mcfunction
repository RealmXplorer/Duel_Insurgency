tag @a add kothIngame

scoreboard objectives modify kothTimer displayname [{"text":"KOTH Points ","bold":true,"color":"red"}]

scoreboard objectives setdisplay sidebar kothTimer

schedule function du-in:music/ingame/koth 4s

bossbar set bossbar:gametimer players @a
team join Classic @a[tag=!spectating]
scoreboard players set @a[tag=!spectating,tag=!working] kothTimer 0
execute store result score #main maxTimer run scoreboard players get #main gameTimeMax
bossbar set bossbar:gametimer visible true

advancement grant @a[tag=playing] only du-in:gamemode/koth
tag @a remove kothl