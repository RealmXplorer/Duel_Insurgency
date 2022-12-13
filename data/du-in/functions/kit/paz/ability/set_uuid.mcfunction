#Store UUID and mark assigned
execute store result entity @s Owner[0] int 1 run data get entity @p UUID[0] 1
execute store result entity @s Owner[1] int 1 run data get entity @p UUID[1] 1
execute store result entity @s Owner[2] int 1 run data get entity @p UUID[2] 1
execute store result entity @s Owner[3] int 1 run data get entity @p UUID[3] 1
execute if data entity @s Owner run tag @s remove notAssigned
