#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
clear @s player_head[custom_data={du-in:'ralseiHead'}]
scoreboard players enable @s info

#Play sound
playsound minecraft:ralsei.voice master @s ~ ~ ~ 100 1

#Announce kit pick
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Ralsei ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]

#Set kit score to match kit
scoreboard players set @s kit 24
$data modify storage du-in:player$(current) kit set value {"kit":"chara"}

#Clear and remove tags
function du-in:lobby/kitmenu/select/common