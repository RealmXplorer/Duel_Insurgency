execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
playsound minecraft:entity.spider.ambient master @s ~ ~ ~ 100 1
clear @s player_head[custom_data={du-in:'spiderHead'}]
scoreboard players set @s kit 1
$data modify storage du-in:player$(current) kit set value {"kit":"spider"}
tag @s[predicate=du-in:chance/ten_chance] add caveSpider
tellraw @s [{text:"Selected the ",bold:true,color:gray},{text:"Spider ",bold:true,color:gold},{text:"class! ",bold:true,color:gray},{text:"(Click here for kit info!)",bold:false,color:white,"underlined":true,"click_event":{"action":"run_command","command":"/trigger info add 1"}}]
#tellraw @s {text:"Spider",color:red,bold:true,extra:[{text:"\n The Spider kit uses its fangs and webs to subdue the enemy.",color:white,bold:false},{text:"\n\n Webbed Sword: ",color:gray,bold:true},{text:"Webbed sword used to damage enemies.",color:white,bold:false},{text:"\n Web Blast: ",color:gold,bold:true},{text:"Creates a blast webs in a radius to slow enemies.",color:white,bold:false}]}
function du-in:lobby/kitmenu/select/common