
#playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 5 2
#playsound minecraft:block.anvil.land master @s ~ ~ ~ .1 1
playsound minecraft:cuphead.ability.charged master @a ~ ~ ~
execute positioned ^ ^ ^1.25 run function du-in:kit/cuphead/ability/raycast

scoreboard players remove @s cardPower 5
clear @s minecraft:paper 1
xp set @s[tag=!stolen] 200 levels
clear @s carrot_on_a_stick
