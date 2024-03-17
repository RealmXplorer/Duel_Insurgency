give @s minecraft:mushroom_stew{display:{Name:'[{"text":"RUNZA™","color":"gold","bold":true,"italic":false},{"text":" THE TEMPERATURE IS THE PRICE GET IT CHEAP CHEAP CHEAP RIGHT NOW! FREEZING TEMPERATURE = FREEZY DEAL!","color":"#008A05"}]',Lore:['[{"text":"HOLY SMOKES WHAT A GOOD DEAL"}]','{"text":"GET IN ON THIS GREAT DEAL"}','{"text":"RIGHT NOW THE TEMPER-"}','{"text":"ATURE IS THE PRICE BUY"}','{"text":"SUPER CHEAP IT IT DOESN\'T"}','{"text":"GET ANY CHEAPER THAN THIS!!"}']},du-in:weaponItem,Enchantments:[{}],fixedItem:1b,CustomModelData:100} 1
effect clear @s minecraft:saturation
effect give @s minecraft:hunger 10 255 true

execute if entity @s[scores={runzaEat=1..}] run function du-in:kit/runza/ability/end