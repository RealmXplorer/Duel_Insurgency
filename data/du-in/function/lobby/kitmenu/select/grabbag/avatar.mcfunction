#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head[custom_data={du-in:'aangHead'}]

#Play sound
playsound minecraft:avatar.hit master @s ~ ~ ~ 100 1

#Announce kit pick
tellraw @s [{text:"Selected the ",bold:true,color:gray},{text:"Aang ",bold:true,color:gold},{text:"class! ",bold:true,color:gray},{text:"(Click here for kit info!)",bold:false,color:white,"underlined":true,"click_event":{"action":"run_command","command":"/trigger info add 1"}}]

#Set kit score to match kit
scoreboard players set @s kit 32
$data modify storage du-in:player$(current) kit set value {"kit":"avatar"}

#Clear and remove tags
function du-in:lobby/kitmenu/select/common