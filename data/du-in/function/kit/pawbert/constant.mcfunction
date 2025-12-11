
#Weapons#
execute unless entity @s[scores={secCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/pawbert/secondary/item

#TP Meter Item
execute unless entity @s[scores={triCount=1}] if entity @s[tag=!teamDead,tag=hasVial] run function du-in:kit/pawbert/secondary/vial_item

#Track Secondary Item
execute store result score @s secCount run clear @s blaze_rod 0
execute store result score @s triCount run clear @s gunpowder 0

#THE RUNT
#ABANDONED BY FAMILY
#SEEKS TO PROVE
#HIS WORTH
#I WILL GIVE HIM
#THE CHANCE