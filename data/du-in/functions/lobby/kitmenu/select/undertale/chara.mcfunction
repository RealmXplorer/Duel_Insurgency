execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head{charaHead:1b}
playsound minecraft:chara.voice master @s ~ ~ ~ 100 1
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Chara ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
scoreboard players set @s kit 9
#tellraw @s {"text":"Chara","color":"red","bold":true,"extra":[{"text":"\n The Chara kit uses their knife and determination to eliminate all who stand in their way.","color":"white","bold":false},{"text":"\n\n Real Knife: ","color":"gray","bold":true},{"text":"Here we are! A proper weapon to defeat your enemies.","color":"white","bold":false},{"text":"\n Determination: ","color":"gold","bold":true},{"text":"Terrifies enemies around Chara, and gives them a strength boost.","color":"white","bold":false}]}
function du-in:lobby/kitmenu/select/common