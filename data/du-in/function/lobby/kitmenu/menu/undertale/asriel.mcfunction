#execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/asriel with storage du-in:main player
execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/undertale/asriel

item replace entity @s[tag=kitMenu] inventory.6 with minecraft:player_head[custom_data={du-in:'asrielHead'},custom_name='{"text":"Asriel","color":"white","bold":true,"italic":false}',lore=['{"text":"Undertale","color":"aqua","bold":true,"italic":true}'],profile={id:[I;-171500783,804276705,-1983779023,-343739928],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTRkNDMzYWViZWIxNWU1NzNkYWM1ZjY5MTE2NTRlYzM4MzQ0ZjJhY2IxMWNhOGIyOWQ5YzM3MDY2ODNkN2E0In19fQ=="}]}] 1

execute if entity @s[scores={kitList=6}] run scoreboard players remove @s kitList 1