tag @a add ctfIngame
bossbar set du-in:bluectf players @a
bossbar set du-in:redctf players @a
execute if score #main ctfMax matches 3 run scoreboard objectives modify flagGot displayname ["",{"text":"Flag Captures ","bold":true,"color":"blue"},{"text":"(of 3)","color":"gray"}]
execute if score #main ctfMax matches 5 run scoreboard objectives modify flagGot displayname ["",{"text":"Flag Captures ","bold":true,"color":"blue"},{"text":"(of 5)","color":"gray"}]
execute if score #main ctfMax matches 7 run scoreboard objectives modify flagGot displayname ["",{"text":"Flag Captures ","bold":true,"color":"blue"},{"text":"(of 7)","color":"gray"}]
execute if score #main ctfMax matches 1 run scoreboard objectives modify flagGot displayname ["",{"text":"Flag Captures ","bold":true,"color":"blue"},{"text":"(of 1)","color":"gray"}]
execute if score #main ctfMax matches 2 run scoreboard objectives modify flagGot displayname ["",{"text":"Flag Captures ","bold":true,"color":"blue"},{"text":"(of 2)","color":"gray"}]

#execute if score #main map matches 1 at @r run playsound minecraft:soundeffect.judge master @a[tag=!working] ~ ~ ~ 10000 1 1

bossbar set du-in:bluectf visible true
bossbar set du-in:redctf visible true

scoreboard objectives setdisplay sidebar flagGot
scoreboard players set Red flagGot 0
scoreboard players set Blue flagGot 0
advancement grant @a[tag=playing] only du-in:gamemode/ctf
tag @a remove ctfl