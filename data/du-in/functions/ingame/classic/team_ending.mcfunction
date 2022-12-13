#If Blue is about to win#
execute if score #main cBluePoints matches 20.. if entity @a[tag=!songEnd,tag=playing,tag=!win,tag=!lose,tag=!winend] run tellraw @a ["",{"text":"Blue Team","bold":true,"color":"blue"},{"text":" is about to win!","bold":true,"color":"gray"}]
execute if score #main cBluePoints matches 20.. if entity @a[tag=playing,tag=!win,tag=!lose,tag=!winend] run bossbar set minecraft:classicblue color red

#If Red team is about to win
execute if score #main cRedPoints matches 20.. if entity @a[tag=!songEnd,tag=playing,tag=!win,tag=!lose,tag=!winend] run tellraw @a ["",{"text":"Red Team","bold":true,"color":"red"},{"text":" is about to win!","bold":true,"color":"gray"}]
execute if score #main cRedPoints matches 20.. if entity @a[tag=playing,tag=!win,tag=!lose,tag=!winend] run bossbar set minecraft:classicred color red

#Start end of round music
execute if entity @a[tag=!songEnd,tag=playing,tag=!win,tag=!lose,tag=!winend] run tag @a[tag=!working] add songEnd
scoreboard players set @a[tag=song,tag=songEnd] music 0
execute as @a[tag=song,tag=songEnd] run function du-in:music/ingame/stop/transition
tag @a[tag=songEnd] remove song