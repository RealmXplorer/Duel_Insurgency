execute if entity @s[tag=!sabotaged] as @a[tag=playing,tag=!spectating] unless score @a[scores={kit=1005},tag=kitActions,limit=1] team = @s team run tag @s add chickenJockey
tag @s[tag=!sabotaged] remove chickenJockey
tag @s[tag=sabotaged] add chickenJockey

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects
playsound minecraft:jack_black.chicken_jockey master @a ~ ~ ~ 1 1

execute if entity @s[tag=empower] run effect give @a[tag=chickenJockey] nausea 3 15 true
execute if entity @s[tag=empower] run effect give @a[tag=chickenJockey] slowness 3 1 true
execute if entity @s[tag=empower] run tellraw @a[tag=chickenJockey] {text:"You're nauseated by old jokes!",bold:true,color:red}

execute as @a[tag=chickenJockey] run function du-in:kit/jack_black/ability/chicken_jockey

tag @s remove empower
tag @s remove sabotaged
clear @s #du-in:ability
xp set @s[tag=!stolen] 500 levels
tag @s remove kitActions