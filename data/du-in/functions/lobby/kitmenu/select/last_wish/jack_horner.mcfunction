#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head{hornerHead:1b}

#Play sound
playsound minecraft:jack_horner.bumbum record @s ~ ~ ~ 1 1
#playsound minecraft:asgore.voice master @s ~ ~ ~ 100 1
#Announce kit pick
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Big Jack Horner ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
#Set kit score to match kit
scoreboard players set @s kit 26
#Tell player about kit
#tellraw @s {"text":"Jack_horner","color":"blue","bold":true,"extra":[{"text":"\n Lorum Ipsum.","color":"white","bold":false},{"text":"\n\n Weapon: ","color":"gray","bold":true},{"text":"Lorum ipsum docet.","color":"white","bold":false},{"text":"\n Ability: ","color":"gold","bold":true},{"text":"Lorum ipsum docet.","color":"white","bold":false}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common