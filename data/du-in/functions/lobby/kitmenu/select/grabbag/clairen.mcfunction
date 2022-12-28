execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
playsound minecraft:clairen.select master @s ~ ~ ~ 100 1
clear @s player_head{clairenHead:1b}
scoreboard players set @s kit 25
tag @s[predicate=du-in:ten_chance] add maskless

tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Clairen ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
function du-in:lobby/kitmenu/select/common