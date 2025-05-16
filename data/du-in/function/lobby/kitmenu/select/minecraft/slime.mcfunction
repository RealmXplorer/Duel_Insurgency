execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
playsound minecraft:entity.slime.death master @s ~ ~ ~ 100 1
clear @s player_head[custom_data={du-in:'slimeHead'}]
scoreboard players set @s kit 3
$data modify storage du-in:player$(current) kit set value {"kit":"slime"}
tellraw @s [{text:"Selected the ",bold:true,color:gray},{text:"Slime ",bold:true,color:gold},{text:"class! ",bold:true,color:gray},{text:"(Click here for kit info!)",bold:false,color:white,"underlined":true,"click_event":{"action":"run_command","command":"/trigger info add 1"}}]
function du-in:lobby/kitmenu/select/common