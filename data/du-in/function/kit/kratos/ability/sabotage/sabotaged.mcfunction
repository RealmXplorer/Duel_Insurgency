damage @s[tag=!empower] 18 arrow
execute if entity @s[tag=empower] run damage @s 21 arrow

playsound du-in:kit.kratos.rock master @a ~ ~ ~ 1 0.5
particle block_crumble{block_state:"minecraft:packed_mud"} ~ ~1 ~ 0.5 0.5 0.5 1 100 normal

#Rock Crumble sfx

function du-in:kit/all/ability/sabotage/effects