scoreboard players remove @s Diamonds 1000
tellraw @s ["",{"text":"Kit purchased!","color":"green","bold":true},{"text":" (You now have ","color":"gray"},{"score":{"name":"@s","objective":"Diamonds"},"color":"aqua"},{"text":" diamonds)","color":"gray"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1000 1 1
playsound minecraft:soundeffect.unlock master @s ~ ~ ~ 1000 1 1
tag @s add pazUnlocked
function du-in:lobby/kitmenu/select/unlock/paz