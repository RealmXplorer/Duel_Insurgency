scoreboard players set #main online 2
execute if entity @a[scores={lobby=3}] unless entity @a[tag=playing] if score #main mapCountdown matches -1.. unless entity @a[tag=countStop] run scoreboard players remove #main mapCountdown 1