#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head{vaderHead:1b}
#Play sound
playsound minecraft:vader.voice master @s ~ ~ ~ 100 1
#Announce kit pick
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Darth Vader ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
#Set kit score to match kit
scoreboard players set @s kit 18
#Tell player about kit
#tellraw @s {"text":"Darth Vader","color":"red","bold":true,"extra":[{"text":"\n Darth Vader uses his melee strength to destroy the enemy.","color":"white","bold":false},{"text":"\n\n Sith Lightsaber: ","color":"gray","bold":true},{"text":"The weapon of an evil brute, used to decimate enemies.","color":"white","bold":false},{"text":"\n Force Choke: ","color":"gold","bold":true},{"text":"Lifts enemies in the air while choking them.","color":"white","bold":false}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common