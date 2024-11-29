##TEST
give @s minecraft:mushroom_stew[custom_name='[{"text":"RUNZA™","color":"gold","bold":true,"italic":false},{"text":" THE TEMPERATURE IS THE PRICE GET IT CHEAP CHEAP CHEAP RIGHT NOW! FREEZING TEMPERATURE = FREEZY DEAL!","color":"#008A05"}]',lore=['[{"text":"HOLY SMOKES WHAT A GOOD DEAL"}]','{"text":"GET IN ON THIS GREAT DEAL"}','{"text":"RIGHT NOW THE TEMPER-"}','{"text":"ATURE IS THE PRICE BUY"}','{"text":"SUPER CHEAP IT IT DOESN\'T"}','{"text":"GET ANY CHEAPER THAN THIS!!"}'],enchantment_glint_override=true,item_model="du-in:item/abilities/runza",food={nutrition:1,saturation:2,can_always_eat:true},consumable={consume_seconds:1.6}] 1

effect clear @s minecraft:saturation
effect give @s minecraft:hunger 10 255 true

execute if entity @s[scores={runzaEat=1..}] run function du-in:kit/runza/ability/end