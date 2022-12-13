    #BLUE CAPTURING POINT#
        execute if entity @s[scores={pointCap=..80}] unless entity @s[scores={pointCap=..-102}] run fill ~-2 ~ ~-2 ~2 ~ ~-2 minecraft:purple_concrete replace #minecraft:concrete
        execute if entity @s[scores={pointCap=..60}] unless entity @s[scores={pointCap=..-102}] run fill ~-2 ~ ~-2 ~2 ~ ~-1 minecraft:purple_concrete replace #minecraft:concrete
        execute if entity @s[scores={pointCap=..40}] unless entity @s[scores={pointCap=..-102}] run fill ~-2 ~ ~-2 ~2 ~ ~ minecraft:purple_concrete replace #minecraft:concrete
        execute if entity @s[scores={pointCap=..20}] unless entity @s[scores={pointCap=..-102}] run fill ~-2 ~ ~-2 ~2 ~ ~1 minecraft:purple_concrete replace #minecraft:concrete
        execute if entity @s[scores={pointCap=..5}] unless entity @s[scores={pointCap=..-102}] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:purple_concrete replace #minecraft:concrete

        execute if entity @s[scores={pointCap=..-5}] unless entity @s[scores={pointCap=..-102}] run fill ~-2 ~ ~-2 ~2 ~ ~-2 minecraft:blue_concrete replace #minecraft:concrete
        execute if entity @s[scores={pointCap=..-20}] unless entity @s[scores={pointCap=..-102}] run fill ~-2 ~ ~-2 ~2 ~ ~-1 minecraft:blue_concrete replace #minecraft:concrete
        execute if entity @s[scores={pointCap=..-40}] unless entity @s[scores={pointCap=..-102}] run fill ~-2 ~ ~-2 ~2 ~ ~ minecraft:blue_concrete replace #minecraft:concrete
        execute if entity @s[scores={pointCap=..-60}] unless entity @s[scores={pointCap=..-102}] run fill ~-2 ~ ~-2 ~2 ~ ~1 minecraft:blue_concrete replace #minecraft:concrete
        execute if entity @s[scores={pointCap=..-80}] unless entity @s[scores={pointCap=..-102}] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:blue_concrete replace #minecraft:concrete
        execute if entity @s[scores={pointCap=..-100}] unless entity @s[scores={pointCap=..-102}] run fill ~ ~ ~ ~ ~ ~ minecraft:blue_stained_glass replace #minecraft:glass

        execute if entity @s[scores={pointCap=..99}] run fill ~ ~ ~ ~ ~ ~ minecraft:purple_stained_glass replace red_stained_glass

        execute unless entity @a[gamemode=adventure,scores={team=1},distance=..3,tag=!teamDead] unless entity @s[scores={pointCap=..-102}] run scoreboard players remove @s pointCap 2