#Cycle
scoreboard players add #main teamNameToggle 1
execute if score #main teamNameToggle matches 2 run scoreboard players reset #main teamNameToggle

#Team names invisible
execute if score #main teamNameToggle matches 1 run tellraw @a ["",{text:"Enemy Team Names: ",bold:true,color:gold},{text:"Invisible",color:red}]
execute if score #main teamNameToggle matches 1 run team modify Blue nametagVisibility hideForOtherTeams
execute if score #main teamNameToggle matches 1 run team modify Red nametagVisibility hideForOtherTeams

#Team names visible
execute unless score #main teamNameToggle matches 1 run tellraw @a ["",{text:"Enemy Team Names: ",bold:true,color:gold},{text:"Visible",color:green}]
execute unless score #main teamNameToggle matches 1 run team modify Blue nametagVisibility always
execute unless score #main teamNameToggle matches 1 run team modify Red nametagVisibility always

setblock ~ ~ ~2 stone_button[facing=south] destroy