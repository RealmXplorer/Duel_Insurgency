#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head{yharimHead:1b}
#Play sound
playsound minecraft:yharim.rage.ready master @s ~ ~ ~ 100 1
#Announce kit pick
#Set kit score to match kit
scoreboard players set @s kit 20
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Yharim ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
tag @s[predicate=du-in:ten_chance] add lorde
#Tell player about kit
#tellraw @s {"text":"Saac","color":"blue","bold":true,"extra":[{"text":"\n Hailing from Youtube, Saac uses his caffeine addiction and chaotic nature to destroy his opponents.","color":"white","bold":false},{"text":"\n Jumbo Pop: ","color":"gray","bold":true},{"text":"Uses a large, popsicle that does low damage.","color":"white","bold":false},{"text":"\n Hustle: ","color":"gold","bold":true},{"text":"Removes enemy abilities and \/ or adds cooldown times to abilities.","color":"white","bold":false}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common