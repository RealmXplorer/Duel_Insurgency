tellraw @s ["",{"text":"Kit purchased!","color":"green","bold":"true"}]
playsound minecraft:entity.player.levelup master @p ~ ~ ~ 1000 1 1
scoreboard players remove @s Diamonds 750
tag @s add saacUnlocked
function du-in:lobby/kitmenu/select/unlock/saac