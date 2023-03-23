say done
#summon marker ~ ~1 ~ {Tags:["tpMark"]}
tag @a[scores={kit=27}] add this
execute anchored eyes facing entity @s eyes run summon marker ~ ~ ~ {Tags:["tpMark"],NoGravity:1}
execute store result score @s[tag=!found] player run scoreboard players get @a[tag=this,limit=1,sort=nearest] player
#tag @e[tag=tpMark,tag=!found,sort=nearest] add found
execute store result entity @s Rotation[0] float 1 run data get entity @p[tag=this] Rotation[0]

tp @p[tag=this] @s
kill @s

tag @p[tag=this] remove this
#scoreboard players reset @s pussRayStep