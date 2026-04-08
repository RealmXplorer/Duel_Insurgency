execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info

clear @s player_head[custom_data={du-in:'sauronHead'}]

#Sound
playsound minecraft:entity.iron_golem.hurt master @s ~ ~ ~ .5 .1 1
playsound minecraft:terraria.golhit master @s ~ ~ ~ 1 .1 1
playsound minecraft:block.netherite_block.break master @s ~ ~ ~ 1 1
playsound minecraft:block.heavy_core.hit master @s ~ ~ ~ 1 1

scoreboard players set @s kit 31
$data modify storage du-in:player$(current) kit set value {"kit":"sauron"}

tellraw @s [{text:"Selected the ",bold:true,color:gray},{text:"Sauron ",bold:true,color:gold},{text:"class! ",bold:true,color:gray},{text:"(Click here for kit info!)",bold:false,color:white,"underlined":true,"click_event":{"action":"run_command","command":"/trigger info add 1"}}]
execute if entity @a[tag=partyLeader,tag=specialEvent] run tellraw @a [{selector:"@s",bold:true},{text:" has picked the ",bold:true,color:gray},{text:"Sauron ",bold:true,color:gold},{text:"class! ",bold:true,color:gray}]

function du-in:lobby/kitmenu/select/common