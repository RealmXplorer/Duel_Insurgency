playsound minecraft:yoda.death master @a ~ ~ ~ 2 1 1

#scoreboard players set @s[scores={yodaTimer=0..}] yodaTimer 0
function du-in:kit/yoda/ability/end
#scoreboard players set @s yodaDamage 0
#function du-in:kit/yoda/ability/end