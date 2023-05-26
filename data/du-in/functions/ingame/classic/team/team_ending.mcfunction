#If Blue is about to win#
execute if score #main bluePoints matches 20.. if entity @a[tag=!songEnd,tag=playing,tag=!win,tag=!lose] run tellraw @a ["",{"text":"Blue Team","bold":true,"color":"blue"},{"text":" is about to win!","bold":true,"color":"gray"}]
execute if score #main bluePoints matches 20.. if entity @a[tag=playing,tag=!win,tag=!lose] run bossbar set minecraft:classicblue color red

#execute if score #main bluePoints matches 20.. if entity @a[tag=!songEnd,tag=playing,tag=!win,tag=!lose] run tellraw @a ["",{"text":"Blue Team","bold":true,"color":"blue"},{"text":" is about to win!","bold":true,"color":"gray"}]
#execute if score #main bluePoints matches 20.. if entity @a[tag=playing,tag=!win,tag=!lose] run bossbar set minecraft:classicblue color red

#If Red team is about to win
execute if score #main redPoints matches 20.. if entity @a[tag=!songEnd,tag=playing,tag=!win,tag=!lose] run tellraw @a ["",{"text":"Red Team","bold":true,"color":"red"},{"text":" is about to win!","bold":true,"color":"gray"}]
execute if score #main redPoints matches 20.. if entity @a[tag=playing,tag=!win,tag=!lose] run bossbar set minecraft:classicred color red

execute as @a[tag=!songEnd] at @s run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 1
execute as @a[tag=!songEnd] at @s run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 2

#Start end of round music
execute if entity @a[tag=!songEnd,tag=playing,tag=!win,tag=!lose] run tag @a[tag=!working] add songEnd
scoreboard players set @a[tag=song,tag=songEnd] music 0
execute as @a[tag=song,tag=songEnd] run function du-in:music/ingame/stop/transition
function du-in:music/ingame/classic
tag @a[tag=songEnd] remove song