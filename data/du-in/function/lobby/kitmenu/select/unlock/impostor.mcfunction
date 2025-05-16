#Set storage to currently selected player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head[custom_data={du-in:'susHead'}]

#Play sound
playsound minecraft:sus.pick master @s ~ ~ ~ 100 1

#Announce kit pick
tellraw @s [{text:"Selected the ",bold:true,color:gray},{text:"The Impostor ",bold:true,color:gold},{text:"class!",bold:true,color:gray},{text:" (sus)",bold:false,color:gray,"italic":true},{text:" (Click here for kit info!)",bold:false,color:white,"underlined":true,"click_event":{"action":"run_command","command":"/trigger info add 1"}}]

#Set kit score to match kit
scoreboard players set @s kit 1003
$data modify storage du-in:player$(current) kit set value {"kit":"impostor"}

#Add Sus tag (allows venting)
tag @s add sus

#Chance to drip out amongus
tag @s[predicate=du-in:chance/quarter_chance] add drip

#Clear and remove tags
function du-in:lobby/kitmenu/select/common