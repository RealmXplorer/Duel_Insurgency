#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head{sansHead:1b}
#Play sound
playsound minecraft:sans.voice master @s ~ ~ ~ 100 1
#Announce kit pick
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Sans ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
#Set kit score to match kit
scoreboard players set @s kit 16
#Tell player about kit
#tellraw @s {"text":"Sans","color":"blue","bold":true,"extra":[{"text":"\n Sans's kit uses his iconic bones to fight, it does little damage but inflicts karma.","color":"white","bold":false},{"text":"\n\n Magic Bone: ","color":"gray","bold":true},{"text":"A very basic attack at first sight, but can dish out damage fast.","color":"white","bold":false},{"text":"\n Bad Time: ","color":"gold","bold":true},{"text":"Allows sans to teleport behind the nearest enemy, increase strength, and avoid attack cooldowns.","color":"white","bold":false}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common