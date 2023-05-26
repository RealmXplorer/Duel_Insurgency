tag @a add ctfIngame
bossbar set du-in:bluectf players @a
bossbar set du-in:redctf players @a
bossbar set bossbar:gametimer players @a

scoreboard objectives modify flagGot displayname [{"text":"Flag Captures ","bold":true,"color":"blue"}]

#execute if score #main map matches 1 at @r run playsound minecraft:soundeffect.judge master @a[tag=!working] ~ ~ ~ 10000 1 1
schedule function du-in:music/ingame/ctf 4s

#bossbar set du-in:bluectf visible true
#bossbar set du-in:redctf visible true
execute store result score #main maxTimer run scoreboard players get #main gameTimeMax
bossbar set bossbar:gametimer visible true

scoreboard objectives setdisplay sidebar flagGot
scoreboard players set Red flagGot 0
scoreboard players set Blue flagGot 0
advancement grant @a[tag=playing] only du-in:gamemode/ctf
tag @a remove ctfl