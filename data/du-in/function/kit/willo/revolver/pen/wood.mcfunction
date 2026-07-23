playsound minecraft:entity.zombie.break_wooden_door block @a ~ ~ ~ .2 .8
playsound minecraft:entity.zombie.break_wooden_door block @a ~ ~ ~ .2 1.1
playsound minecraft:block.wood.break block @a ~ ~ ~ 5 1

particle block{block_state:"minecraft:oak_log"} ~ ~ ~ 0 0 0 0 20 normal

#execute positioned ^ ^ ^1.5 if entity @s[tag=!hitStone,tag=!woodStop,tag=!hitWood,distance=..30] run function du-in:kit/willo/revolver/wood_raycast

kill @s[tag=woodPass]
scoreboard players add @s woodPen 1
tag @s[scores={woodPen=2..}] add woodPass
tag @s remove hitWood