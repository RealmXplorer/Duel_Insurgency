#Give Pawbert different parameters
execute if entity @s[scores={kit=40}] run return run function du-in:kit/pawbert/secondary/tracker/check
execute if entity @s[scores={kit=1001}] run return run function du-in:kit/paz/secondary/tracker/check

#Default
execute unless items entity @s container.* gunpowder run function du-in:kit/all/secondary/tracker/init

#Old
# execute store result score @s triCount run clear @s gunpowder 0
# execute unless entity @s[scores={triCount=1}] run function du-in:kit/all/secondary/tracker/init