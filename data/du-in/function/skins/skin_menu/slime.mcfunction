#Functionality
execute if entity @s[scores={skinList=..0},tag=slimeSkins] run function du-in:skins/slime
execute if entity @s[scores={skinList=..0},tag=!slimeSkins] run function du-in:skins/skin_menu/buy/slime/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.22 with minecraft:player_head[custom_data={du-in:'slimeHead'},custom_name={text:"I SEE YOU",color:gray,bold:true},lore=[{text:"Slime",color:green,bold:true,"italic":true}],profile={id:[I;318736035,-1403303440,-1876061664,-609467480],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}]

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!slimeSkins] inventory.22 with minecraft:player_head[custom_data={du-in:'slimeHead'},custom_name={text:"Slime Skins",color:white,bold:true,italic:false},lore=[{text:"200 Diamonds",color:red,bold:true,"italic":true}],profile={id:[I;1468365184,-1779283512,-1591494131,727618947],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}]

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={slimeSkin=1..}] run item replace entity @s[tag=slimeSkins] inventory.22 with minecraft:player_head[custom_data={du-in:'slimeHead'},custom_name={text:"Default",color:white,bold:true,italic:false},lore=[{text:"Slime",color:green,bold:true,"italic":true}],profile={id:[I;2131429491,-546682343,-1681000759,251135175],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODk1YWVlYzZiODQyYWRhODY2OWY4NDZkNjViYzQ5NzYyNTk3ODI0YWI5NDRmMjJmNDViZjNiYmI5NDFhYmU2YyJ9fX0="}]}]
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={slimeSkin=1},tag=slimeSkins] inventory.22 with minecraft:player_head[custom_data={du-in:'slimeHead'},custom_name={text:"Slimer",color:white,bold:true,italic:false},lore=[{text:"Slime",color:green,bold:true,"italic":true}],profile={id:[I;-427003002,483411386,-1987691777,2074182772],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWJmOTg3ZWI1YTljMTQ2YWQ0NDgyN2NhNzlmOTdhNmFiZGE2ZWQ1YzYxNzQ4OTA0MDQzZWZjMWFmOTBhODk1NyJ9fX0="}]}]

execute if entity @s[scores={skinList=20}] run scoreboard players remove @s skinList 1