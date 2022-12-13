#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head{gasterHead:1b}
#Play sound
playsound minecraft:gaster.voice master @s ~ ~ ~ 100 1
#Announce kit pick
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Gaster ","bold":true,"obfuscated":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
#Set kit score to match kit
scoreboard players set @s kit 10
#Tell player about kit
#tellraw @s {"text":"Gaster","color":"red","bold":true,"obfuscated":true,"extra":[{"text":"RUN.","color":"red","bold":true}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common