execute if entity @s[tag=airBlock] unless block ~ ~-1 ~ #du-in:zomb_invalid run tag @s remove airBlock
execute if entity @s[tag=!airBlock] run function du-in:kit/creeper/ability/mace/end

