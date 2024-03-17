#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head[custom_data={du-in:'palpsHead'}]
#Play sound
playsound minecraft:palpatine.voice master @s ~ ~ ~ 100 1
#Announce kit pick
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Palpatine ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
#Set kit score to match kit
scoreboard players set @s kit 19
#Tell player about kit
#tellraw @s {"text":"Palpatine","color":"red","bold":true,"extra":[{"text":"\n The Palpatine kit uses his blade and force lightning to smite his opponents.","color":"white","bold":false},{"text":"\n\n Saber of the Sith: ","color":"gray","bold":true},{"text":"The Palpatine kit uses his saber to weaken his opponents, and has a chance to steal life.","color":"white","bold":false},{"text":"\n Force Storm: ","color":"gold","bold":true},{"text":"Summons a circle of lightning around Palpatine to weaken his opponents.","color":"white","bold":false}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common