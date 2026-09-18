scoreboard players reset @s secKitUse

#return error if has flags
execute if entity @s[tag=flagGot] run return run function du-in:kit/all/ability/titles/flag

#Add secKitActions.
tag @s[predicate=!du-in:runza_hold] add secKitActions