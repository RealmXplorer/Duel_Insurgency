#Pick / Purchase
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/unlock/jerma with storage du-in:main player
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/unlock/jerma

#Head Displays
item replace entity @s[tag=kitMenu] inventory.4 with minecraft:player_head[custom_data={du-in:'jermaHead'},custom_name='{"text":"Jerma","color":"white","bold":true,"italic":false}',lore=['{"text":"Jerma985 (Twitch)","color":"dark_purple","bold":true,"italic":true}'],profile={id:[I;1547217839,-1191557859,-2112938076,-2070163647],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTc1ODViOTkwZjgwM2Y3YTViMDkyYWRlNDI3MjhlOTU0YmExYzFmMmIzNzc4OTE4ZGU0ODk3NDY2ZTBiZmVmIn19fQ=="}]}] 1

execute if entity @s[scores={kitList=4}] run scoreboard players remove @s kitList 1