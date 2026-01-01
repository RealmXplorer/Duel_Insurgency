scoreboard players add @s gumballPursueTimer 1

execute if entity @s[scores={gumballPursueTimer=..14}] run particle minecraft:smoke ~ ~ ~ 0.2 0 0.2 0 20 force

execute if entity @s[scores={gumballPursueTimer=15}] run particle minecraft:flash{color:0xffffff} ~ ~1 ~ 0 0 0 0 1 normal
execute if entity @s[scores={gumballPursueTimer=15}] run playsound minecraft:soundeffect.battlestart master @a ~ ~ ~ 1 1.25

execute if entity @s[scores={gumballPursueTimer=15..}] run particle minecraft:flame ~ ~ ~ 0.2 0 0.2 0 20 force
playsound minecraft:block.fire.ambient master @a ~ ~ ~ 1 2
execute if entity @s[tag=!void,scores={gumballPursueTimer=15..}] if entity @a[gamemode=!spectator,distance=0.05..2,tag=playing,tag=!teamDead] run function du-in:kit/gumball/ability/gumball/explode
execute if entity @s[tag=void,scores={gumballPursueTimer=15..}] if entity @e[type=skeleton,tag=gonerThing,distance=0.05..2] run function du-in:kit/gumball/ability/gumball/explode

execute if entity @s[scores={gumballPursueTimer=40..}] run function du-in:kit/gumball/ability/gumball/miss