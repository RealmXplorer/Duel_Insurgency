execute store result storage du-in:willo_trap player.current int 1 run scoreboard players get @s player

execute if entity @s[tag=!void] run function du-in:kit/willo/ability/trap/damage with storage du-in:willo_trap player
execute if entity @s[tag=void] run function du-in:kit/willo/ability/void/damage with storage du-in:willo_trap player