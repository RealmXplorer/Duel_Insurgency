scoreboard players remove @s Diamonds 600
tellraw @s ["",{"text":"Zombie Skins purchased!","color":"green","bold":true},{"text":" (You now have ","color":"gray"},{"score":{"name":"@s","objective":"Diamonds"},"color":"aqua"},{"text":" diamonds)","color":"gray"}]
function du-in:other/skins/skin_menu/actions/purchase_sound
tag @s add zombSkins