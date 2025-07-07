execute unless score #main online matches ..1 run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.5 2
execute unless score #main online matches ..1 run playsound minecraft:block.bell.use master @a ~ ~ ~ 0.5 1
execute unless score #main online matches ..1 run playsound minecraft:block.amethyst_block.hit master @a ~ ~ ~ 0.5 2

#execute unless score #main online matches ..1 store result score #main gamemode run scoreboard players get #main gamemode
execute unless score #main online matches ..1 run function du-in:lobby/gamemode_select/actions/pick_gamemode

execute if score #main online matches ..1 run tellraw @a {text:"Not enough players to start game!",bold:true,"italic":true,color:dark_red}
execute if score #main online matches ..1 run playsound minecraft:block.note_block.guitar master @a ~ ~ ~ 2 0.5 1
execute if score #main online matches ..1 run playsound minecraft:block.note_block.didgeridoo master @a ~ ~ ~ 2 0.5 1
bossbar set minecraft:map_countdown players @a

scoreboard players reset @s play