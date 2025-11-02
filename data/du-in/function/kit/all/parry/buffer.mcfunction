scoreboard players add @s parryCooldown 1

execute if entity @s[scores={parryCooldown=6..}] run attribute @s minecraft:armor modifier remove parry_resist
execute if entity @s[scores={parryCooldown=6..}] run attribute @s minecraft:armor_toughness modifier remove parry_resist

#execute if entity @s[scores={parryCooldown=25},tag=!parried,predicate=!du-in:is_sneaking] run playsound minecraft:entity.warden.sonic_charge master @s[tag=!parried] ~ ~ ~ .5 2
#execute if entity @s[scores={parryCooldown=65},tag=parried,predicate=!du-in:is_sneaking] run playsound minecraft:entity.warden.sonic_charge master @s[tag=parried] ~ ~ ~ .5 2
execute if entity @s[scores={parryCooldown=65},predicate=!du-in:is_sneaking] run playsound minecraft:entity.warden.sonic_charge master @s ~ ~ ~ .5 2

#execute if entity @s[scores={parryCooldown=40..},tag=!parried,predicate=!du-in:is_sneaking] run function du-in:kit/all/parry/recharge
#execute if entity @s[scores={parryCooldown=80..},tag=parried,predicate=!du-in:is_sneaking] run function du-in:kit/all/parry/recharge
execute if entity @s[scores={parryCooldown=80..},predicate=!du-in:is_sneaking] run function du-in:kit/all/parry/recharge