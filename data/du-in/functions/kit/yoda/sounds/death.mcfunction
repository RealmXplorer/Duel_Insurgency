playsound minecraft:yoda.death master @a ~ ~ ~ 2 1 1

#scoreboard players set @s[scores={yodaTimer=0..}] yodaTimer 0
tag @s remove cooldown
scoreboard players reset @s yodaTimer
scoreboard players set @s yodaAbsorb 0
scoreboard players set @s yodaDamage 0
#function du-in:kit/yoda/ability/end