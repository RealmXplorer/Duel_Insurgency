#Give Ring
execute unless entity @s[scores={ringCount=1}] run give @s sugar[custom_name='{"text":"Ring of Power","color":"gold","bold":true}',max_stack_size=1]

#Check for if they have The Ring
execute store result score @s ringCount run clear @s sugar 0

#Add corruption time if not Sauron
execute unless entity @s[scores={kit=31}] run function du-in:kit/sauron/ring/corruption