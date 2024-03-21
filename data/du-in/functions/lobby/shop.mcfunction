##GO BACK AND TITLE NOW IN SCHEDULED FUNCTION

#Skin menu
execute if entity @s[tag=skinMenu] run function du-in:other/skins/skin_menu/common

#Music
execute unless entity @s[tag=musicOff] unless score #main pylonsDestroyed matches 3 run function du-in:music/lobby/shop

#Food#
#give @s stone_sword[custom_model_data=109,food={nutrition:4,saturation_modifier:0.1,can_always_eat:true},custom_name='{"text":"Pawpsicle","color":"#FF0A6C","bold":true}',unbreakable={show_in_tooltip:false}]

#Drink
#give @s potion[custom_name='{"text":"The Big Boy","color":"#148AFF","bold":true}',custom_data={du-in:'bigBoy'},potion_contents={custom_color:2058751}] 1
#give @s potion[custom_name='{"text":"Witch\'s Brew","color":"#A70FFF","bold":true}',custom_data={du-in:'bigBoy'},potion_contents={custom_color:11364095}] 1
#give @s potion[custom_name='{"text":"Skrunk Special","color":"#A80D9E","bold":true}',custom_data={du-in:'skrunkSpecial'},potion_contents={custom_color:16718251}] 1
#give @s potion[custom_name='{"text":"The Rock and Stone","color":"#089DA8","bold":true}',custom_data={du-in:'rockAndStone'},potion_contents={custom_color:853332}] 1

execute if entity @s[scores={drinkCount=1..}] run function du-in:lobby/shop/drinks/init
execute store result score @s drinkCount run clear @s potion 0

execute if entity @s[scores={drinkMilk=1..}] run function du-in:lobby/shop/drinks/drink_milk
