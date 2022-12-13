tag @s[tag=!flagGot] add secKitActions
execute if entity @s[tag=flagGot] run function du-in:kit/all/ability/flag
scoreboard players reset @s secKitUse