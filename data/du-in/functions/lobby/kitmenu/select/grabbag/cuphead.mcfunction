execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
playsound minecraft:cuphead.pick master @s ~ ~ ~ 100 1 
clear @s player_head{cupHead:1b}
scoreboard players set @s kit 21
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Cuphead ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
execute if entity @s[predicate=du-in:half_chance] run tellraw @s [{"text":"Don't Duel with the Devil!","bold":true,"color":"gold"}]

function du-in:lobby/kitmenu/select/common