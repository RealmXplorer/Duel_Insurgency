execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
playsound minecraft:entity.creeper.hurt master @s ~ ~ ~ 100 1
clear @s player_head[custom_data={du-in:'creeperHead'}]

scoreboard players set @s kit 4
$data modify storage du-in:player$(current) kit set value {"kit":"creeper"}

tellraw @s [{text:"Selected the ",bold:true,color:gray},{text:"Creeper ",bold:true,color:gold},{text:"class! ",bold:true,color:gray},{text:"(Click here for kit info!)",bold:false,color:white,"underlined":true,"click_event":{"action":"run_command","command":"/trigger info add 1"}}]
execute if entity @a[tag=partyLeader,tag=specialEvent] run tellraw @a [{selector:"@s",bold:true},{text:" has picked the ",bold:true,color:gray},{text:"Creeper ",bold:true,color:gold},{text:"class! ",bold:true,color:gray}]

function du-in:lobby/kitmenu/select/common