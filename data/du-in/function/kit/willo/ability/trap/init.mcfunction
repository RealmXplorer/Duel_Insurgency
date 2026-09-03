#Test for if player is on your team
execute if entity @s[tag=!void] if entity @a[distance=0.05..3,tag=playing,gamemode=!spectator,tag=!teamDead] run function du-in:kit/willo/ability/trap/spring
execute if entity @s[tag=void] if entity @e[type=skeleton,distance=0.05..3] run function du-in:kit/willo/ability/trap/spring