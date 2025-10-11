execute unless score #main lobbyTheme matches 1 unless score #main lobbyTheme matches 3 if entity @s[tag=!team2] run tellraw @a [{selector:"@s"},{text:" has joined ",color:gray},{text:blue,bold:true,color:blue},{text:" team!",color:gray}]
execute if score #main lobbyTheme matches 1 if entity @s[tag=!team2] run tellraw @a [{selector:"@s"},{text:" has joined the ",color:gray},{text:"Ghost",bold:true,color:dark_purple},{text:" team!",color:gray}]
execute if score #main lobbyTheme matches 3 if entity @s[tag=!team2] run tellraw @a [{selector:"@s"},{text:" has joined the ",color:gray},{text:"Elf",bold:true,color:dark_green},{text:" team!",color:gray}]
execute if entity @s[tag=!team2] run playsound minecraft:block.amethyst_block.place master @s ~ ~ ~ 5
clear @s[tag=!team2] carrot_on_a_stick[custom_data={du-in:'redItem'}]
clear @s[tag=!team2] carrot_on_a_stick[custom_data={du-in:'blueItem'}]

scoreboard players set @s team 2
tag @s remove team1
tag @s add team2
tag @s add teamPicked