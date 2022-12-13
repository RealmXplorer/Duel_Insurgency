tellraw @s ["",{"text":"Kit purchased!","color":"green","bold":"true"}]
playsound minecraft:entity.player.levelup master @p ~ ~ ~ 1000 1 1
scoreboard players remove @s Diamonds 1000
tag @s add pazUnlocked
function du-in:lobby/kitmenu/select/unlock/paz