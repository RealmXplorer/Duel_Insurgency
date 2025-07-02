#Kill and tag
execute if entity @s[tag=!projectile] run tag @s add projectile
execute if entity @s[type=!snowball,nbt={inGround:1b}] run kill @s