execute store result score @s secCount run clear @s #du-in:secondary 0
execute unless entity @s[scores={secCount=1}] run function du-in:kit/all/secondary/give
