execute store result score @s weapCount run clear @s #du-in:weapon 0
execute unless score @s weapCount matches 1 run function du-in:kit/all/weapon/init
