#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head{yodaHead:1b}
#Play sound
playsound minecraft:yoda.hit master @s ~ ~ ~ 100 1
#Set kit score to match kit
scoreboard players set @s kit 29
#Announce kit pick
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Yoda ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]

#Tell player about kit
#tellraw @s {"text":"Luke Skywalker","color":"blue","bold":true,"extra":[{"text":"\n The Luke Skywalker kit uses a more support based kit to halt enemies.","color":"white","bold":false},{"text":"\n\n Lightsaber: ","color":"gray","bold":true},{"text":"Damages enemies with a poweful blade.","color":"white","bold":false},{"text":"\n Force Push: ","color":"gold","bold":true},{"text":"Uses the Force to send enemies flying.","color":"white","bold":false}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common