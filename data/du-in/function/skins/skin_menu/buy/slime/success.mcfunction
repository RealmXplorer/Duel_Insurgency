scoreboard players remove @s Diamonds 200
tellraw @s ["",{text:"Slime Skins purchased!",color:green,bold:true},{text:" (You now have ",color:gray},{"score":{"name":"@s","objective":"Diamonds"},color:aqua},{text:" diamonds)",color:gray}]
function du-in:skins/skin_menu/actions/purchase_sound
tag @s add slimeSkins