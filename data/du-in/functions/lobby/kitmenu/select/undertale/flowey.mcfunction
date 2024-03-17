#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head[custom_data={du-in:'floweyHead'}]
#Play sound
playsound minecraft:flowey.voice master @s ~ ~ ~ 100 1
#Announce kit pick
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Flowey ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
#Set kit score to match kit
scoreboard players set @s kit 12
#Tell player about kit
#tellraw @s {"text":"Flowey","color":"red","bold":true,"extra":[{"text":"\n The Flowey kit uses basic attacks, but can weaken his attackers without lifting a finger","color":"white","bold":false},{"text":"\n\n Flower Power: ","color":"gray","bold":true},{"text":"A sword that deals low damage.","color":"white","bold":false},{"text":"\n Alternate Roots: ","color":"gold","bold":true},{"text":"Flowey digs underground and burrows, also sending up thorns to damage enemies above.","color":"white","bold":false},{"text":" (Kills not always counted)","color":"white","bold":false,"italic":true}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common