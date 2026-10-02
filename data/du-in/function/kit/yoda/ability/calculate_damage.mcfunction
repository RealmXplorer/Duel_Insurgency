execute store result score #main team run scoreboard players get @s team

execute if entity @s[tag=!sabotaged,tag=!void] as @a[distance=0.05..7,tag=playing,tag=!win,tag=!lose,gamemode=!spectator,tag=!teamDead] unless score @s team = #main team run tag @s add yodaMark
tag @s[tag=sabotaged] add yodaMark

scoreboard players reset #main team

execute store result storage du-in:yoda_damage yodaAbsorb.value int 1 run scoreboard players get @s yodaAbsorb

execute if entity @s[tag=void] as @e[type=skeleton,distance=0.05..7] run function du-in:kit/yoda/ability/explode with storage du-in:yoda_damage yodaAbsorb

#function du-in:kit/yoda/ability/explode with storage du-in:yoda_damage yodaAbsorb
execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

execute as @a[tag=yodaMark] run function du-in:kit/yoda/ability/explode with storage du-in:yoda_damage yodaAbsorb
particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
particle minecraft:flash{color:0xffffff} ~ ~ ~ 1 1 1 1 10
playsound du-in:sfx.funny.boom master @a ~ ~ ~ 2 .5
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 1

scoreboard players set @s yodaDamage 0
tag @a remove yodaMark