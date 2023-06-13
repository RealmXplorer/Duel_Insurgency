kill @e[type=skeleton]
tag @a add waveBreak
setblock 97 20 -107 minecraft:black_concrete

execute positioned as @e[type=marker,tag=pylon] run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1000 1
execute positioned as @e[type=marker,tag=pylon] run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1000 1.5
execute positioned as @e[type=marker,tag=pylon] run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1000 0.5

title @a title " "
title @a subtitle [{"text":"Wave ","color":"light_purple","bold":true},{"text":"Clear!","color":"dark_purple","bold":true}]


execute if score #main matchDeaths matches 1.. run scoreboard players remove #main matchDeaths 1
effect give @a instant_health 100 1 true

execute if score #main pylonsDestroyed matches ..2 run tellraw @a [{"text":"The Pylon ","bold":true,"color":"dark_purple"},{"text":"shutters...","color":"light_purple"}]
execute if score #main pylonsDestroyed matches 3 run tellraw @a [{"text":"The multiverse quakes...","bold":true,"color":"dark_purple"}]

function du-in:ingame/void/hazard/shock/end_shock
schedule clear du-in:ingame/void/hazard/shock/prepare

#scoreboard objectives setdisplay sidebar matchDeaths
execute as @a[tag=voidOut] run function du-in:ingame/void/void_return

#scoreboard players set #main waveCooldown 200

schedule function du-in:ingame/void/wave_start 10s

#bossbar set gast:pylon name ["",{"text":"Pylon Stabilization: ","bold":true,"color":"white"},{"score":{"name":"@r","objective":"gonersKilled"},"color":"red"},{"text":" Goners left","color":"gray"}]
#execute store result bossbar gast:pylon max run scoreboard players get @r gonersKilled