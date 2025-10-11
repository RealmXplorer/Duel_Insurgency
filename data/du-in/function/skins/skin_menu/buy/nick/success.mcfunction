scoreboard players remove @s Diamonds 1000
tellraw @s [{text:"Nick Wilde Skins purchased!",color:green,bold:true},{text:" (You now have ",color:gray},{"score":{"name":"@s","objective":"Diamonds"},color:aqua},{text:" diamonds)",color:gray}]
function du-in:skins/skin_menu/actions/purchase_sound
tag @s add nickSkins