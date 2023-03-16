#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
clear @s player_head{ralseiHead:1b}
scoreboard players enable @s info
#Play sound
playsound minecraft:ralsei.voice master @s ~ ~ ~ 100 1
#Announce kit pick
scoreboard players set @s kit 24
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Ralsei ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
#Set kit score to match kit
#Tell player about kit
#tellraw @s {"text":"Asgore","color":"blue","bold":true,"extra":[{"text":"\n The Asgore kit is a heavy-hitting medium-range kit.","color":"white","bold":false},{"text":"\n\n Trident of Kings: ","color":"gray","bold":true},{"text":"A strong, slow, yet throwable weapon fit for a king.","color":"white","bold":false},{"text":"\n Firewall: ","color":"gold","bold":true},{"text":"Summons a wall of fire wherever Asgore is looking, damaging and igniting anyone in it.","color":"white","bold":false}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common