#Cycle
scoreboard players add #main ffaNameToggle 1
execute if score #main ffaNameToggle matches 2 run scoreboard players reset #main ffaNameToggle

#ffa names invisible
execute if score #main ffaNameToggle matches 1 run tellraw @a [{text:"FFA Team Names: ",bold:true,color:gold},{text:"Invisible",color:red}]
execute if score #main ffaNameToggle matches 1 run team modify Classic nametagVisibility hideForOwnTeam
execute if score #main ffaNameToggle matches 1 run team modify Deathmatch nametagVisibility hideForOwnTeam

#ffa names visible
execute unless score #main ffaNameToggle matches 1 run tellraw @a [{text:"FFA Team Names: ",bold:true,color:gold},{text:"Visible",color:green},{text:" (Default)",color:gray}]
execute unless score #main ffaNameToggle matches 1 run team modify Classic nametagVisibility always
execute unless score #main ffaNameToggle matches 1 run team modify Deathmatch nametagVisibility always

setblock ~ ~ ~2 stone_button[facing=south] destroy