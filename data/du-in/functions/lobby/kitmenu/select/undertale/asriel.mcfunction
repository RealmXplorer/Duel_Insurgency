#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head[custom_data={du-in:'asrielHead'}]

#Play sound
playsound minecraft:asriel.voice master @s ~ ~ ~ 100 1
#Announce kit pick
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Asriel ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
#Set kit score to match kit
scoreboard players set @s kit 11
#Tell player about kit
#tellraw @s {"text":"Asriel","color":"red","bold":true,"extra":[{"text":"\n The Asriel kit focuses on dealing large amounts of damage.","color":"white","bold":false},{"text":"\n\n Chaos Saber: ","color":"gray","bold":true},{"text":"Asriel uses his special chaos saber to deal with enemies.","color":"white","bold":false},{"text":"\n Shocker Breaker: ","color":"gold","bold":true},{"text":"Summons lightning where Asriel is looking","color":"white","bold":false}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common