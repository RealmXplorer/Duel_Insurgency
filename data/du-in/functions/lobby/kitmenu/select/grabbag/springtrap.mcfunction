#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head[custom_data={du-in:'springHead'}]
#Play sound
playsound minecraft:springtrap.jumpscare master @s ~ ~ ~ 100 1
#Announce kit pick
scoreboard players set @s kit 5
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Springtrap ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
#Set kit score to match kit
tag @s[tag=playing] add undead
#Tell player about kit
#tellraw @s {"text":"Nick Wilde","color":"blue","bold":true,"extra":[{"text":"\n Nick Wilde uses his speed and overcome opponents.","color":"white","bold":false},{"text":"\n Jumbo Pop: ","color":"gray","bold":true},{"text":"Uses a large, popsicle that does low damage.","color":"white","bold":false},{"text":"\n Hustle: ","color":"gold","bold":true},{"text":"Removes enemy abilities and \/ or adds cooldown times to abilities.","color":"white","bold":false}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common