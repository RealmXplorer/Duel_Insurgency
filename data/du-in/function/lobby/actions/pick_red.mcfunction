execute unless score #main lobbyTheme matches 1 unless score #main lobbyTheme matches 3 if entity @s[tag=!team1] run tellraw @a [{"selector":"@s"},{"text":" has joined ","color":"gray"},{"text":"Red","bold":true,"color":"red"},{"text":" team!","color":"gray"}]
execute if score #main lobbyTheme matches 1 if entity @s[tag=!team1] run tellraw @a [{"selector":"@s"},{"text":" has joined the ","color":"gray"},{"text":"Ghoul","bold":true,"color":"gold"},{"text":" team!","color":"gray"}]
execute if score #main lobbyTheme matches 3 if entity @s[tag=!team1] run tellraw @a [{"selector":"@s"},{"text":" has joined the ","color":"gray"},{"text":"Saint","bold":true,"color":"red"},{"text":" team!","color":"gray"}]
execute if entity @s[tag=!team1] run playsound minecraft:block.amethyst_block.place master @s ~ ~ ~ 5
clear @s[tag=!team1] carrot_on_a_stick[custom_data={du-in:'redItem'}]
clear @s[tag=!team1] carrot_on_a_stick[custom_data={du-in:'blueItem'}]
scoreboard players set @s team 1
tag @s remove team2
tag @s add team1
tag @s add teamPicked