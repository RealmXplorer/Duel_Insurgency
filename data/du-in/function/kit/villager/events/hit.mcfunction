execute unless entity @s[scores={villSkin=1..}] run playsound minecraft:entity.villager.hurt master @a ~ ~ ~ 2 1 1
execute if entity @s[scores={villSkin=1}] run playsound minecraft:entity.vindicator.hurt master @a ~ ~ ~ 2 1 1
execute if entity @s[scores={villSkin=2}] run playsound minecraft:entity.witch.hurt master @a ~ ~ ~ 2 1 1

execute if entity @s[tag=theHatchet] run function du-in:kit/jack_horner/ability/hatchet/end

#scoreboard players reset @s hit