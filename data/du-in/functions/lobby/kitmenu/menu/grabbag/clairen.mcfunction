execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/clairen
#clear @s player_head

item replace entity @s[tag=kitMenu,tag=!showSkins] inventory.3 with minecraft:player_head{clairenHead:1b,display:{Name:'{"text":"Clairen","color":"white","bold":true,"italic":false}',Lore:['{"text":"Rivals of Aether","color":"#8ff0f7","bold":true,"italic":true}']},SkullOwner:{Id:[I;-641831667,-1060878634,-1174944740,735223405],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmQ2M2E3OTQ2MWEwZTk5YzNlOWI4MDA4ZTEwYzA2MGJiYzdlZDM5Mjk2OTI3YTI3NjBjYjBmNTNmMzU1YjlhOSJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}

execute unless entity @s[scores={clairenSkin=1..},tag=kitMenu,tag=showSkins] run item replace entity @s[tag=showSkins] inventory.3 with minecraft:player_head{clairenHead:1b,display:{Name:'{"text":"Clairen","color":"white","bold":true,"italic":false}',Lore:['{"text":"Rivals of Aether","color":"#8ff0f7","bold":true,"italic":true}']},SkullOwner:{Id:[I;-641831667,-1060878634,-1174944740,735223405],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmQ2M2E3OTQ2MWEwZTk5YzNlOWI4MDA4ZTEwYzA2MGJiYzdlZDM5Mjk2OTI3YTI3NjBjYjBmNTNmMzU1YjlhOSJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}
item replace entity @s[scores={clairenSkin=1},tag=kitMenu,tag=showSkins] inventory.3 with minecraft:player_head{clairenHead:1b,display:{Name:'{"text":"Clairen","color":"white","bold":true,"italic":false}',Lore:['{"text":"Rivals of Aether","color":"#8ff0f7","bold":true,"italic":true}']},SkullOwner:{Id:[I;362162431,-1389739602,-1387506468,-619197374],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzM5NWZmMDFiZDVmYjVkM2I1YWNiZTU1OWM0NDlhOThhZjlkYzE5YjMwMjJhOTg5NTI3Yzg3MTAzNTZhODYzZSJ9fX0="}]}},fixedItem:1b,weaponItem:1b,headItem:1b,lobbyItem:1b}

execute if entity @s[scores={kitList=3}] run scoreboard players remove @s kitList 1