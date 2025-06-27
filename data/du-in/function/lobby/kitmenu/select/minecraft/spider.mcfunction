#Reset ingame scores if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset

#Allow to access info
scoreboard players enable @s info

#Play sounds
playsound minecraft:entity.spider.ambient master @s ~ ~ ~ 100 1

#Clear head
clear @s player_head[custom_data={du-in:'spiderHead'}]

#Set character
scoreboard players set @s kit 1
$data modify storage du-in:player$(current) kit set value {"kit":"spider"}

#Announce
tellraw @s [{text:"Selected the ",bold:true,color:gray},{text:"Spider ",bold:true,color:gold},{text:"class! ",bold:true,color:gray},{text:"(Click here for kit info!)",bold:false,color:white,"underlined":true,"click_event":{"action":"run_command","command":"/trigger info add 1"}}]

#Reset lobby scores and tags
function du-in:lobby/kitmenu/select/common

#Chance to make Spider a Cave Spider
tag @s[predicate=du-in:chance/ten_chance] add caveSpider
