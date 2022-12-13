#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head{krampusHead:1b}
#Play sound
playsound minecraft:krampus.line.low master @s ~ ~ ~ 100 1
#Announce kit pick
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Krampus ","bold":true,"color":"gold"},{"text":"class!","bold":true,"color":"gray"}]
#Set kit score to match kit
scoreboard players set @s kit 1001
#Tell player about kit
#tellraw @s {"text":"Saac","color":"blue","bold":true,"extra":[{"text":"\n Hailing from Youtube, Saac uses his caffeine addiction and chaotic nature to destroy his opponents.","color":"white","bold":false},{"text":"\n Jumbo Pop: ","color":"gray","bold":true},{"text":"Uses a large, popsicle that does low damage.","color":"white","bold":false},{"text":"\n Hustle: ","color":"gold","bold":true},{"text":"Removes enemy abilities and \/ or adds cooldown times to abilities.","color":"white","bold":false}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common