scoreboard players remove @s Diamonds 5
execute store result score @s drinkType run random value 1..7
function du-in:skins/skin_menu/actions/purchase_sound

#Food#
##TEST
execute if entity @s[scores={drinkType=1}] run give @s stone_sword[item_model="du-in:weapons/popsicle",food={nutrition:4,saturation:0.1,can_always_eat:true},consumable={consume_seconds:1.6},item_name={text:"Pawpsicle",color:"#FF0A6C",bold:true},unbreakable={}]

#Drink
execute if entity @s[scores={drinkType=2}] run give @s potion[custom_name={text:"The Big Boy",color:"#148AFF",bold:true,italic:false},custom_data={du-in:'bigBoy'},potion_contents={custom_color:2058751}] 1
execute if entity @s[scores={drinkType=3}] run give @s potion[custom_name={text:"Witch's Brew",color:"#A70FFF",bold:true,italic:false},custom_data={du-in:'witchesBrew'},potion_contents={custom_color:11364095}] 1
execute if entity @s[scores={drinkType=4}] run give @s potion[custom_name={text:"Skrunk Special",color:"#A80D9E",bold:true,italic:false},custom_data={du-in:'skrunkSpecial'},potion_contents={custom_color:16718251}] 1
execute if entity @s[scores={drinkType=5}] run give @s potion[custom_name={text:"The Rock and Stone",color:"#089DA8",bold:true,italic:false},custom_data={du-in:'rockAndStone'},potion_contents={custom_color:853332}] 1

execute if entity @s[scores={drinkType=6}] run give @s milk_bucket[custom_name={text:"Milk Pail",color:white,bold:true,italic:false},lore=[{text:"I am the milkman, my milk is delicious!",color:gray,bold:false}]] 1
execute if entity @s[scores={drinkType=7}] run give @s stone_sword[item_model="du-in:abilities/runza",food={nutrition:4,saturation:0.1,can_always_eat:true},consumable={consume_seconds:1.6},item_name={text:"Runza",color:"#136b0e",bold:true},unbreakable={}] 1
