scoreboard players set @s yodaAbsorb 0
scoreboard players set @s yodaDamage 0
scoreboard players set @s yodaTimer 50

playsound minecraft:yoda.laugh voice @a ~ ~ ~ 100 1 1
playsound minecraft:entity.breeze.shoot master @a ~ ~ ~ 1 .5
playsound minecraft:entity.breeze.hurt master @a ~ ~ ~ 1 .5

#Cooldown pause
tag @s add cooldown

#Remove ability from hand
#clear @s minecraft:carrot_on_a_stick

#End ability
tag @s remove kitActions