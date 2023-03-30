tag @a remove waveBreak
execute positioned 113 5 -91 run playsound minecraft:soundeffect.voidbell master @a ~ ~ ~ 1 1

scoreboard players add #main wave 1

scoreboard players set @a[scores={pylonNum=..2}] gonersKilled 30
scoreboard players set @a[scores={pylonNum=3}] gonersKilled 45

execute if score #main pylonsDestroyed matches ..2 run tellraw @a [{"text":"The Pylon ","bold":true,"color":"dark_purple"},{"text":"reignites!...","color":"light_purple"}]
execute if score #main pylonsDestroyed matches 3 run tellraw @a [{"text":"The world is ending...","bold":true,"color":"dark_purple"}]

scoreboard players set #main waveCooldown 100

bossbar set gast:pylon name ["",{"text":"Pylon Stabilization: ","bold":true,"color":"white"},{"score":{"name":"@r","objective":"gonersKilled"},"color":"red"},{"text":" Goners left","color":"gray"}]
execute store result bossbar gast:pylon max run scoreboard players get @r gonersKilled

scoreboard players set #main waveCooldown 0