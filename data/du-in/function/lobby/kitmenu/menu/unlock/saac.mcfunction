#Pick / Purchase
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/unlock/saac with storage du-in:main player
# execute if entity @s[scores={kitList=..0},tag=!saacUnlocked] run function du-in:kit/saac/buy/buy

#Head Display
item replace entity @s[tag=kitMenu] inventory.1 with minecraft:player_head[custom_data={du-in:'saacHead'},custom_name='{"text":"Saac","color":"white","bold":true,"italic":false}',lore=['{"text":"Saacology (YT)","color":"gold","bold":true,"italic":true}'],profile={id:[I;59345066,1326991218,-1163918538,1015587088],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGViMWRkM2EzNmU0ZjZmZGRkNWI2YmIxYjljOTNmNDhkYTVmYjE3ZGI2MDZjMDY4NDUxYmU2ODQ5ZDY0MmNhZiJ9fX0="}]}] 1

execute if entity @s[scores={kitList=1}] run scoreboard players remove @s kitList 1