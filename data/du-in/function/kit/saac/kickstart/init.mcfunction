execute if entity @s[predicate=du-in:kickstart/kickstart2] run function du-in:kit/saac/kickstart/orange
execute if entity @s[predicate=du-in:kickstart/kickstart1] run function du-in:kit/saac/kickstart/yellow
execute if entity @s[predicate=du-in:kickstart/kickstart3] run function du-in:kit/saac/kickstart/red
execute if entity @s[predicate=du-in:kickstart/kickstart4] run function du-in:kit/saac/kickstart/blue

playsound minecraft:soundeffect.kickstart master @a ~ ~ ~ 10000 1.5
item replace entity @s weapon.mainhand with air
scoreboard players set @s runzaEat 1
scoreboard players remove @s saacCarry 1
tag @s remove secKitActions