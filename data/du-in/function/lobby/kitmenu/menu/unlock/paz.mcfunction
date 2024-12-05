#Pick / Purchase
#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/unlock/paz with storage du-in:main player
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/unlock/paz

#Head Displays
item replace entity @s[tag=kitMenu] inventory.5 with minecraft:player_head[custom_data={du-in:'pazHead'},custom_name='{"text":"PearApplez","color":"white","bold":true,"italic":false}',lore=['{"text":"PearApplez","color":"dark_red","bold":true,"italic":true}','{"text":"(he paid me in VBucks)","color":"gray","bold":false,"italic":true}'],profile={id:[I;837252449,1229669474,-1997864783,1308219708],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWNmY2QwMjk1ODZlMTYyZmE4YWU0ODViZDdiNTdiMTFhM2I5ODU2NzkzZjRmZDFjYTZkMzBiMDIyMzEzZmM5YiJ9fX0="}]}] 1

execute if entity @s[scores={kitList=5}] run scoreboard players remove @s kitList 1