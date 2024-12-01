title @s actionbar ["",{"text":"Trident Returned!","bold":true,"color":"green"}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 0.75
tag @s remove thrown
scoreboard players reset @s tridentTimer
function du-in:kit/asgore/weapon