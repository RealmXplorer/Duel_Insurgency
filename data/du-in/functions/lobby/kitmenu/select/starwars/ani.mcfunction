#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head{aniHead:1b}
#Play sound
playsound minecraft:anakin.voice master @s ~ ~ ~ 100 1
#Announce kit pick
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Anakin ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
#Set kit score to match kit
scoreboard players set @s kit 22
#Tell player about kit
#tellraw @s {"text":"Anakin","color":"blue","bold":true,"extra":[{"text":"\n Anakin uses a simple blade, but their real weapon lies in the Force.","color":"white","bold":false},{"text":"\n\n Lightsaber: ","color":"gray","bold":true},{"text":"A simple, low-damage weapon.","color":"white","bold":false},{"text":"\n Force Pull: ","color":"gold","bold":true},{"text":"Pulls enemy players towards him.","color":"white","bold":false}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common