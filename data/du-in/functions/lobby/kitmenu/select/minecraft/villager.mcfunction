execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
clear @s player_head[custom_data={du-in:'villagerHead'}]
playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 100 1
scoreboard players set @s kit 8
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Villager ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
function du-in:lobby/kitmenu/select/common