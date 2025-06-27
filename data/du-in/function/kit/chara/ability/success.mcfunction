execute if entity @s[tag=!sabotaged,tag=!void] run tag @a[distance=0.05..10,tag=playing,tag=!win,tag=!lose,gamemode=!spectator,tag=!teamDead] add charaMark
execute if entity @s[tag=!sabotaged] as @a[tag=charaMark] if score @s team = @a[tag=kitActions,limit=1,tag=playing,scores={kit=17}] team run tag @s remove charaMark
tag @s[tag=sabotaged] add charaMark

execute if entity @s[tag=void] as @e[type=skeleton,distance=0.05..10] run function du-in:kit/chara/ability/effect

execute as @a[tag=charaMark] run function du-in:kit/chara/ability/effect
execute unless entity @a[tag=charaMark] run function du-in:kit/all/ability/titles/team
execute if entity @a[tag=charaMark] run function du-in:kit/chara/ability/cooldown

tag @a remove charaMark