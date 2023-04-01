tellraw @s ["",{"text":"Kit purchased!","color":"green","bold":"true"}]
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1000 1 1
playsound minecraft:soundeffect.unlock master @s ~ ~ ~ 1000 1 1
scoreboard players remove @s Diamonds 985
tag @s add jermaUnlocked
function du-in:lobby/kitmenu/select/unlock/jerma