execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info
playsound minecraft:entity.player.burp master @s ~ ~ ~ 100 1
clear @s player_head[custom_data={du-in:'playerHead'}]
scoreboard players set @s kit 7
#$data modify storage du-in:player$(current) kit set value {"kit":"player"}
tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Steve ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]
function du-in:lobby/kitmenu/select/common