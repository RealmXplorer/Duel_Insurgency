scoreboard players add #main invisibleToggle 1
execute if score #main invisibleToggle matches 2.. run scoreboard players set #main legMusicToggle 0

setblock ~ ~ ~ stone_button[face=floor,facing=west] destroy

execute if score #main invisibleToggle matches 1 run tellraw @a [{text:"Universal invisibility: ",bold:true,color:gold},{text:"Off",color:red}]
execute if score #main invisibleToggle matches 1 run return run playsound du-in:sfx.unlock master @a ~ ~ ~ .2 1.5

tellraw @a [{text:"Legendary Character Music: ",bold:true,color:gold},{text:"On",color:green},{text:" (Default)",color:gray}]
playsound du-in:sfx.unlock master @a ~ ~ ~ .2 1.2


