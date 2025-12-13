
execute unless entity @s[scores={antidoteCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/pawbert/secondary/antidote/item

execute store result score @s antidoteCount run clear @s iron_nugget 0