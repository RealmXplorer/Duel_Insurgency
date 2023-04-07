execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
playsound minecraft:entity.slime.death master @s ~ ~ ~ 100 1
clear @s player_head{slimeHead:1b}
scoreboard players set @s kit 3
tag @s[predicate=du-in:chance/ten_chance] add caveSpider
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Slime ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
function du-in:lobby/kitmenu/select/common