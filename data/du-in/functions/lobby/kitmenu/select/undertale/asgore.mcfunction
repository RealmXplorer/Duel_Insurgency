#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head[custom_data={du-in:'asgoreHead'}]

#Play sound
playsound minecraft:asgore.voice master @s ~ ~ ~ 100 1
#Announce kit pick
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Asgore ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
#Set kit score to match kit
scoreboard players set @s kit 14
#Tell player about kit
#tellraw @s {"text":"Asgore","color":"blue","bold":true,"extra":[{"text":"\n The Asgore kit is a heavy-hitting medium-range kit.","color":"white","bold":false},{"text":"\n\n Trident of Kings: ","color":"gray","bold":true},{"text":"A strong, slow, yet throwable weapon fit for a king.","color":"white","bold":false},{"text":"\n Firewall: ","color":"gold","bold":true},{"text":"Summons a wall of fire wherever Asgore is looking, damaging and igniting anyone in it.","color":"white","bold":false}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common