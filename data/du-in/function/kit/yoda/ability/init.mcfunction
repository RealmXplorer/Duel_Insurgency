scoreboard players set @s yodaAbsorb 0
scoreboard players set @s yodaDamage 0
scoreboard players set @s[tag=!empower] yodaTimer 50
execute if entity @s[tag=empower] run scoreboard players set @s yodaTimer 80

playsound minecraft:yoda.laugh voice @a ~ ~ ~ 100 1 1
playsound minecraft:entity.breeze.shoot master @a ~ ~ ~ 1 .5
playsound minecraft:entity.breeze.hurt master @a ~ ~ ~ 1 .5

#Cooldown pause
tag @s add cooldown

#Remove ability from hand
clear @s #du-in:ability

#End ability
tag @s remove kitActions