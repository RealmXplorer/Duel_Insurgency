execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
playsound minecraft:entity.zombie.ambient master @s ~ ~ ~ 100 1
clear @s player_head[custom_data={du-in:'zombieHead'}]
scoreboard players set @s kit 2
$data modify storage du-in:player$(current) kit set value {"kit":"zombie"}
tellraw @s [{text:"Selected the ",bold:true,color:gray},{text:"Zombie ",bold:true,color:gold},{text:"class! ",bold:true,color:gray},{text:"(Click here for kit info!)",bold:false,color:white,"underlined":true,"click_event":{"action":"run_command","command":"/trigger info add 1"}}]
tag @s[tag=playing] add undead
#tellraw @s {text:"Zombie",color:red,bold:true,extra:[{text:"\n The Zombie kit uses its melee strength to destroy the enemy.",color:white,bold:false},{text:"\n\n Undead Strike: ",color:gray,bold:true},{text:"A weapon of brute strength used to damage enemies.",color:white,bold:false},{text:"\n Undead Rage: ",color:gold,bold:true},{text:"Summons a gravestone for the zombie to respawn at, and gives him buffs on respawn.",color:white,bold:false}]}
function du-in:lobby/kitmenu/select/common