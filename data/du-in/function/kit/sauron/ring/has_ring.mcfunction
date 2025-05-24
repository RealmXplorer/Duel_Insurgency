#Give Ring
execute if entity @s[tag=!gasterInvisible] unless entity @s[scores={ringCount=1}] unless entity @s[scores={floweyHitTimer=0..}] run function du-in:kit/sauron/ring/item

#Check for if they have The Ring
execute store result score @s ringCount run clear @s sugar 0

#Add corruption time if not Sauron
execute unless entity @s[scores={kit=31}] run function du-in:kit/sauron/ring/corruption