execute unless entity @s[scores={card=1}] run playsound minecraft:cuphead.parry.charge voice @a ~ ~ ~ 1
scoreboard players set @s card 1

item replace entity @s hotbar.8 with paper[custom_name='{"text":"Card","color":"gold","bold":true,"italic":false}',lore=['{"text":"Collect 5 to change ability!","color":"dark_purple","bold":true}'],custom_model_data=100] 1
