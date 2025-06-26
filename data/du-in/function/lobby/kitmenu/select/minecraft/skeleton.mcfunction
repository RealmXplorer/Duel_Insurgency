execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
playsound minecraft:entity.skeleton.ambient master @s ~ ~ ~ 100 1
playsound minecraft:entity.skeleton.hurt master @s ~ ~ ~ 0.5 1
clear @s player_head[custom_data={du-in:'skeletonHead'}]
scoreboard players set @s kit 30
$data modify storage du-in:player$(current) kit set value {"kit":"skeleton"}
tellraw @s [{text:"Selected the ",bold:true,color:gray},{text:"Skeleton ",bold:true,color:gold},{text:"class! ",bold:true,color:gray},{text:"(Click here for kit info!)",bold:false,color:white,"underlined":true,"click_event":{"action":"run_command","command":"/trigger info add 1"}}]
#tellraw @s {text:"Spider",color:red,bold:true,extra:[{text:"\n The Spider kit uses its fangs and webs to subdue the enemy.",color:white,bold:false},{text:"\n\n Webbed Sword: ",color:gray,bold:true},{text:"Webbed sword used to damage enemies.",color:white,bold:false},{text:"\n Web Blast: ",color:gold,bold:true},{text:"Creates a blast webs in a radius to slow enemies.",color:white,bold:false}]}
function du-in:lobby/kitmenu/select/common