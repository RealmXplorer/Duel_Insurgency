tellraw @s ["",{"text":"Kit purchased!","color":"green","bold":"true"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1000 1 1
scoreboard players remove @s Diamonds 1949
tag @s add runzaUnlocked
function du-in:lobby/kitmenu/select/unlock/runza