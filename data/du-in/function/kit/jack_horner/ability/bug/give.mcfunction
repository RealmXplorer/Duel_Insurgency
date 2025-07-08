#clear @s minecraft:carrot_on_a_stick
clear @s coal
tag @s add ethicalBug
clear @s stone_axe
item replace entity @s hotbar.0 with minecraft:stick[item_name={text:"Ethical Bug",color:gold,bold:true},lore=[{text:"Hit a player 3 times to remove!",color:dark_purple,bold:true},[{text:""}],{text:"I'm beginning to think you don't",color:dark_gray},{text:"appreciate the value of a life. ",color:dark_gray}],item_model="du-in:other/bug"] 1
function du-in:kit/all/ability/sabotage/effects

tag @s add magicBag
tag @s remove sabotaged
tag @s add hornerWeapon