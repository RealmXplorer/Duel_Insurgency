summon falling_block ~ ~ ~ {BlockState:{id:"minecraft:sunflower"},Time:1,NoGravity:1b,Tags:["floweyStem"]}
playsound minecraft:block.grass.place master @a ~ ~ ~ 10 1
particle minecraft:block{block_state:"minecraft:tall_grass"} ~ ~1 ~ 0.2 0.2 0.2 1 10 force

scoreboard players set @n[type=falling_block,tag=!set] floweyArrowTimer 10
tag @n[tag=floweyStem,scores={floweyArrowTimer=1..},tag=!set] add set
execute unless score #floweyStem running matches 1 run function du-in:kit/flowey/ability/stem/loop