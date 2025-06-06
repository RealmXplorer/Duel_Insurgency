#Functionality
execute if entity @s[scores={skinList=..0},tag=villagerSkins] run function du-in:skins/villager
execute if entity @s[scores={skinList=..0},tag=!villagerSkins] run function du-in:skins/skin_menu/buy/villager/try


#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.17 with minecraft:player_head[custom_data={du-in:'villagerHead'},custom_name={text:"I SEE YOU",color:gray,bold:true},lore=[{text:"Creeper",color:green,bold:true,"italic":true}],profile={id:[I;318736035,-1403303440,-1876061664,-609467480],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}] 1

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!villagerSkins] inventory.17 with minecraft:player_head[custom_data={du-in:'villagerHead'},custom_name={text:"Villager Skins",color:white,bold:true,italic:false},lore=[{text:"400 Diamonds",color:red,bold:true,"italic":true}],profile={id:[I;1468365184,-1779283512,-1591494131,727618947],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}]

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={villSkin=1..}] run item replace entity @s[tag=villagerSkins] inventory.17 with minecraft:player_head[custom_data={du-in:'villagerHead'},custom_name={text:"Default",color:white,bold:true,italic:false},lore=[{text:"Villager",color:green,bold:true,"italic":true}],profile={id:[I;1480608382,-1588769976,-1183003207,-1970401256],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDFiODMwZWI0MDgyYWNlYzgzNmJjODM1ZTQwYTExMjgyYmI1MTE5MzMxNWY5MTE4NDMzN2U4ZDM1NTU1ODMifX19"}]}]
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={villSkin=1},tag=villagerSkins] inventory.17 with minecraft:player_head[custom_data={du-in:'villagerHead'},custom_name={text:"Illager",color:white,bold:true,italic:false},lore=[{text:"Villager",color:green,bold:true,"italic":true}],profile={id:[I;73502451,-1145421044,-1440943755,92654936],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWUxY2FiMzgyNDU4ZTg0M2FjNDM1NmUzZTAwZTFkMzVjMzZmNDQ5ZmExYTg0NDg4YWIyYzY1NTdiMzkyZCJ9fX0="}]}]
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={villSkin=2},tag=villagerSkins] inventory.17 with minecraft:player_head[custom_data={du-in:'villagerHead'},custom_name={text:"Witch",color:white,bold:true,italic:false},lore=[{text:"Villager",color:green,bold:true,"italic":true}],profile={id:[I;-103470526,-994032010,-2040227010,1988961387],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2U3MWE2ZWIzMDNhYjdlNmY3MGVkNTRkZjkxNDZhODBlYWRmMzk2NDE3Y2VlOTQ5NTc3M2ZmYmViZmFkODg3YyJ9fX0="}]}]

execute if entity @s[scores={skinList=16}] run scoreboard players remove @s skinList 1
