execute if entity @s[tag=!teamDead,tag=!win,tag=!lose,tag=!kitMenu,tag=!startgame] unless entity @s[tag=deathDouble,level=..3] unless entity @s[scores={kit=31},tag=hasRing] unless entity @s[scores={deathTimer=0..}] run xp add @s -1 levels

execute if entity @s[level=1] run function du-in:kit/all/ability/return