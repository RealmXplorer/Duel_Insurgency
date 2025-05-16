execute if entity @s[tag=givenSpectate] run function du-in:lobby/kitmenu/select/spect
item replace entity @s[tag=kitMenu] inventory.26 with minecraft:barrier[item_name={text:"Spectate Game",color:gray,bold:true},item_model="du-in:lobby/spectate"]
tag @s add givenSpectate