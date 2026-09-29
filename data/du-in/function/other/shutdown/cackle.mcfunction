#say OW!
execute at @e[type=zombie,tag=IMAGE_VESSEL] run playsound minecraft:me master @a ~ ~ ~ 1
tag @s add essential

kill @s
posteffect add @a du-in:dark
#scoreboard players add FRIEND killIngame 1

#kill @e[type=zombie]
#function du-in:other/shutdown/end

advancement revoke @s only du-in:quests/giggle