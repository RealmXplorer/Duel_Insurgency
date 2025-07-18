#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head[custom_data={du-in:'yharimHead'}]

#Play sound
playsound minecraft:yharim.rage.ready master @s ~ ~ ~ 100 1

#Announce kit pick
tellraw @s [{text:"Selected the ",bold:true,color:gray},{text:"Yharim ",bold:true,color:gold},{text:"class! ",bold:true,color:gray},{text:"(Click here for kit info!)",bold:false,color:white,"underlined":true,"click_event":{"action":"run_command","command":"/trigger info add 1"}}]
execute if entity @a[tag=partyLeader,tag=specialEvent] run tellraw @a [{selector:"@s",bold:true},{text:" has picked the ",bold:true,color:gray},{text:"Yharim ",bold:true,color:gold},{text:"class! ",bold:true,color:gray}]

#Set kit score to match kit
scoreboard players set @s kit 20
$data modify storage du-in:player$(current) kit set value {"kit":"yharim"}

#Clear and remove tags
function du-in:lobby/kitmenu/select/common

tag @s[predicate=du-in:chance/ten_chance] add lorde