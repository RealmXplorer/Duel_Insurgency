#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head[custom_data={du-in:'kyloHead'}]
#Play sound
playsound minecraft:kylo.voice master @s ~ ~ ~ 100 1
#Announce kit pick
scoreboard players set @s kit 17
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Kylo Ren ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
#Set kit score to match kit
#Tell player about kit
#tellraw @s {"text":"Kylo Ren","color":"red","bold":true,"extra":[{"text":"\n Kylo Ren uses a Cross-Guard Lightsaber and force freeze to destroy his opponents.","color":"white","bold":false},{"text":"\n\n Cross-Guard Lightsaber: ","color":"gray","bold":true},{"text":"Unstable blade that deals low damage.","color":"white","bold":false},{"text":"\n Force Freeze: ","color":"gold","bold":true},{"text":"Creates a force stasis that freezes an enemy in place.","color":"white","bold":false}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common