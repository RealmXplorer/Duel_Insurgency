kill @e[type=skeleton]
tag @a add waveBreak
execute positioned 113 5 -91 run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1 1

scoreboard players remove #main matchDeaths 1
effect give @a instant_health 100 1

execute if score #main pylonsDestroyed matches ..2 run tellraw @a [{"text":"The Pylon ","bold":true,"color":"dark_purple"},{"text":"shutters...","color":"light_purple"}]
execute if score #main pylonsDestroyed matches 3 run tellraw @a [{"text":"The multiverse quakes...","bold":true,"color":"dark_purple"}]

#scoreboard objectives setdisplay sidebar matchDeaths

scoreboard players set #main waveCooldown 100

bossbar set gast:pylon name ["",{"text":"Pylon Stabilization: ","bold":true,"color":"white"},{"score":{"name":"@r","objective":"gonersKilled"},"color":"red"},{"text":" Goners left","color":"gray"}]
execute store result bossbar gast:pylon max run scoreboard players get @r gonersKilled