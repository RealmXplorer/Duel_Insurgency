execute if entity @s[tag=playing] run function du-in:kit/all/reset
scoreboard players enable @s info

playsound minecraft:cuphead.pick master @s ~ ~ ~ 100 1

clear @s player_head[custom_data={du-in:'sauronHead'}]

scoreboard players set @s kit 31
$data modify storage du-in:player$(current) kit set value {"kit":"sauron"}

tellraw @s [{"text":"Selected the ","bold":true,"color":"gray"},{"text":"Sauron ","bold":true,"color":"gold"},{"text":"class! ","bold":true,"color":"gray"},{"text":"(Click here for kit info!)","bold":false,"color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger info add 1"}}]

function du-in:lobby/kitmenu/select/common