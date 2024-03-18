execute if entity @s[scores={kitList=..0}] run function du-in:lobby/kitmenu/select/grabbag/clairen
#clear @s player_head

item replace entity @s[tag=kitMenu] inventory.3 with minecraft:player_head[custom_data={du-in:'clairenHead'},custom_name='{"text":"Clairen","color":"white","bold":true,"italic":false}',lore=['{"text":"Rivals of Aether","color":"#8ff0f7","bold":true,"italic":true}'],profile={id:[I;-641831667,-1060878634,-1174944740,735223405],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmQ2M2E3OTQ2MWEwZTk5YzNlOWI4MDA4ZTEwYzA2MGJiYzdlZDM5Mjk2OTI3YTI3NjBjYjBmNTNmMzU1YjlhOSJ9fX0="}]}]
#{SkullOwner:{Id:[I;-641831667,-1060878634,-1174944740,735223405],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmQ2M2E3OTQ2MWEwZTk5YzNlOWI4MDA4ZTEwYzA2MGJiYzdlZDM5Mjk2OTI3YTI3NjBjYjBmNTNmMzU1YjlhOSJ9fX0="}]}}}
#,profile={id:[I;-641831667,-1060878634,-1174944740,735223405],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmQ2M2E3OTQ2MWEwZTk5YzNlOWI4MDA4ZTEwYzA2MGJiYzdlZDM5Mjk2OTI3YTI3NjBjYjBmNTNmMzU1YjlhOSJ9fX0="}]}

execute if entity @s[scores={kitList=3}] run scoreboard players remove @s kitList 1