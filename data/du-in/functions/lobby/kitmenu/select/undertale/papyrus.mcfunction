#Reset all scores for kit if playing
execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head[custom_data={du-in:'papyrusHead'}]
#Play sound
playsound minecraft:papyrus.voice master @s ~ ~ ~ 100 1
#Announce kit pick
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Papyrus ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
#Set kit score to match kit
scoreboard players set @s kit 13
#Tell player about kit
#tellraw @s {"text":"Papyrus","color":"blue","bold":true,"extra":[{"text":"\n The Papyrus kit utilizes force to halt and defeat enemies.","color":"white","bold":false},{"text":"\n\n Really Cool Normal Attack: ","color":"gray","bold":true},{"text":"Damage and throw enemies with rad style.","color":"white","bold":false},{"text":"\n Spaghetti: ","color":"gold","bold":true},{"text":"Summons bones from the ground to damage enemies","color":"white","bold":false}]}
#Clear and remove tags
function du-in:lobby/kitmenu/select/common