execute if entity @s[tag=!sabotaged,tag=!void] run tag @a[distance=0.05..7,tag=playing,tag=!win,tag=!lose,gamemode=!spectator,tag=!teamDead] add yodaMark
execute if entity @s[tag=!sabotaged] as @a[tag=yodaMark] if score @s team = @a[tag=kitActions,limit=1,tag=playing,scores={kit=29}] team run tag @s remove yodaMark
tag @s[tag=sabotaged] add yodaMark

execute store result storage du-in:yoda_damage yodaAbsorb.value int 1 run scoreboard players get @s yodaAbsorb

execute if entity @s[tag=void] as @e[type=skeleton,distance=0.05..7] run function du-in:kit/yoda/ability/explode with storage du-in:yoda_damage yodaAbsorb

#function du-in:kit/yoda/ability/explode with storage du-in:yoda_damage yodaAbsorb
execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

execute as @a[tag=yodaMark] run function du-in:kit/yoda/ability/explode with storage du-in:yoda_damage yodaAbsorb
particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
particle minecraft:flash ~ ~ ~ 1 1 1 1 10
playsound minecraft:soundeffect.boom master @a ~ ~ ~ 2 .5
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1 1
#execute if entity @a[tag=yodaMark] run function du-in:kit/chara/ability/cooldown

scoreboard players set @s yodaDamage 0
tag @a remove yodaMark