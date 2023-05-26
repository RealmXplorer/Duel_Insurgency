scoreboard players remove @s primedTimer 1

execute facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.45 ~ ~
execute if entity @a[gamemode=!spectator,distance=..0.5] run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,ExplosionRadius:2b,Tags:["mapSpecific"]}
execute if entity @a[distance=..0.5] run kill @s
#execute anchored eyes unless block ^ ^ ^ air run kill @s

execute if entity @s[scores={primedTimer=..0}] run function du-in:ingame/void/goner/missile_explode