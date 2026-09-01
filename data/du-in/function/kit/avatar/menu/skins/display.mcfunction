#Functionality
execute if entity @s[scores={skinList=..0}] run function du-in:kit/avatar/menu/skins/select

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.8 with minecraft:player_head[custom_data={du-in:'avatarHead'},custom_name={text:"Aang Skins",color:white,bold:true,italic:false},lore=[{text:"None Available!",color:red,bold:true,"italic":true}],profile={id:[I;1468365184,-1779283512,-1591494131,727618947],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}] 1


# execute if entity @s[scores={skinList=..0},tag=avatarSkins] run function du-in:kit/avatar/menu/skins/select
# execute if entity @s[scores={skinList=..0},tag=!avatarSkins] run function du-in:kit/avatar/menu/skins/try

# #Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.8 with minecraft:player_head[custom_data={du-in:'avatarHead'},custom_name={text:"I SEE YOU",color:gray,bold:true},lore=[{text:"Aang",color:green,bold:true,"italic":true}],profile={id:[I;318736035,-1403303440,-1876061664,-609467480],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}] 1

# #Locked Head
# execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!zombSkins] inventory.6 with minecraft:player_head[custom_data={du-in:'zombieHead'},custom_name={text:"Zombie Skins",color:white,bold:true,italic:false},lore=[{text:"800 Diamonds",color:red,bold:true,"italic":true}],profile={id:[I;1468365184,-1779283512,-1591494131,727618947],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}] 1

# #Display Heads
# execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={zombSkin=1..}] run item replace entity @s[tag=zombSkins] inventory.6 with minecraft:player_head[custom_data={du-in:'zombieHead'},custom_name={text:"Default",color:white,bold:true,italic:false},lore=[{text:"Zombie",color:green,bold:true,"italic":true}],profile={id:[I;-1722163816,-273461527,-1459933222,35179936],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTZmYzg1NGJiODRjZjRiNzY5NzI5Nzk3M2UwMmI3OWJjMTA2OTg0NjBiNTFhNjM5YzYwZTVlNDE3NzM0ZTExIn19fQ=="}]}]

execute if entity @s[scores={skinList=8}] run scoreboard players remove @s skinList 1