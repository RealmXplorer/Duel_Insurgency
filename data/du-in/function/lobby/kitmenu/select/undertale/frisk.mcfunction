#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head[custom_data={du-in:'friskHead'}]
#Play sound
playsound minecraft:undertale.hit master @s ~ ~ ~ 100 1
#Announce kit pick
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Frisk ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
#Set kit score to match kit
scoreboard players set @s kit 15
#Tell player about kit
#tellraw @s {"text":"Frisk","color":"blue","bold":true,"extra":[{"text":"\n The Frisk kit is a support-based kit that works best in team situations","color":"white","bold":false},{"text":"\n\n Stick: ","color":"gray","bold":true},{"text":"A quick, low-damage weapon.","color":"white","bold":false},{"text":"\n Pacifism: ","color":"gold","bold":true},{"text":"Prevents you, and enemies from hurting one another, your teammates, however, gain a strength boost.","color":"white","bold":false}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common