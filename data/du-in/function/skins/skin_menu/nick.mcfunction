#Functionality
execute if entity @s[scores={skinList=..0},tag=nickSkins] run function du-in:skins/nick
execute if entity @s[scores={skinList=..0},tag=!nickSkins] run function du-in:skins/skin_menu/buy/nick/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.2 with minecraft:player_head[custom_data={du-in:'nickHead'},custom_name='{"text":"I SEE YOU","color":"gray","bold":true,"italic":false}',lore=['{"text":"Nick Wilde","color":"green","bold":true,"italic":true}'],profile={id:[I;318736035,-1403303440,-1876061664,-609467480],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}] 1

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!nickSkins] inventory.2 with minecraft:player_head[custom_data={du-in:'nickHead'},custom_name='{"text":"Nick Wilde Skins","color":"white","bold":true,"italic":false}',lore=['{"text":"1000 Diamonds","color":"red","bold":true,"italic":true}'],profile={id:[I;1468365184,-1779283512,-1591494131,727618947],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}] 1

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={wildeSkin=1..}] run item replace entity @s[tag=nickSkins] inventory.2 with minecraft:player_head[custom_data={du-in:'nickHead'},custom_name='{"text":"Default","color":"white","bold":true,"italic":false}',lore=['{"text":"Nick Wilde","color":"light_purple","bold":true,"italic":true}'],profile={id:[I;-2089979935,-97038555,-1183453249,822254303],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDljOTAyMjNkYzI0MTU2YzAxZTY1NGQyMmEwZWU5OTQ1NWQ1ODRhNjFkZjEwN2Y2YTdhZTJjNjA3ZjUxZmM5NyJ9fX0="}]}]
#{SkullOwner:{Id:[I;-2089979935,-97038555,-1183453249,822254303],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDljOTAyMjNkYzI0MTU2YzAxZTY1NGQyMmEwZWU5OTQ1NWQ1ODRhNjFkZjEwN2Y2YTdhZTJjNjA3ZjUxZmM5NyJ9fX0="}]}}}
#,profile={id:[I;-2089979935,-97038555,-1183453249,822254303],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDljOTAyMjNkYzI0MTU2YzAxZTY1NGQyMmEwZWU5OTQ1NWQ1ODRhNjFkZjEwN2Y2YTdhZTJjNjA3ZjUxZmM5NyJ9fX0="}]}

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={wildeSkin=1},tag=nickSkins] inventory.2 with minecraft:player_head[custom_data={du-in:'nickHead'},custom_name='{"text":"Officer Wilde","color":"white","bold":true,"italic":false}',lore=['{"text":"Nick Wilde","color":"light_purple","bold":true,"italic":true}'],profile={id:[I;648384526,-1081785875,-1556674649,681858207],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGI4OTgzOTc2OTQyMDUzNzMzMDM1ZGUzY2JmODUyOWI5MjUzZDhmYzU4MzgwMTgwYzI5MWYzMGE4NmFmMThiMSJ9fX0="}]}]
#{SkullOwner:{Id:[I;648384526,-1081785875,-1556674649,681858207],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGI4OTgzOTc2OTQyMDUzNzMzMDM1ZGUzY2JmODUyOWI5MjUzZDhmYzU4MzgwMTgwYzI5MWYzMGE4NmFmMThiMSJ9fX0="}]}}}
#,profile={id:[I;648384526,-1081785875,-1556674649,681858207],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGI4OTgzOTc2OTQyMDUzNzMzMDM1ZGUzY2JmODUyOWI5MjUzZDhmYzU4MzgwMTgwYzI5MWYzMGE4NmFmMThiMSJ9fX0="}]}

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={wildeSkin=2},tag=nickSkins] inventory.2 with minecraft:player_head[custom_data={du-in:'nickHead'},custom_name='{"text":"Saint Nick","color":"white","bold":true,"italic":false}',lore=['{"text":"Nick Wilde","color":"light_purple","bold":true,"italic":true}'],profile={id:[I;-2133150165,1794917375,-1534427512,-334773333],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDE2MzQzNzI4YmQzNjUwMTkwNDNhMTFlYWJmODVhYjQ1M2E2NzllYzY4MTc2NjAxOGFkOTc2N2Y4YjM4MDg4ZCJ9fX0="}]}]
#{SkullOwner:{Id:[I;-2133150165,1794917375,-1534427512,-334773333],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDE2MzQzNzI4YmQzNjUwMTkwNDNhMTFlYWJmODVhYjQ1M2E2NzllYzY4MTc2NjAxOGFkOTc2N2Y4YjM4MDg4ZCJ9fX0="}]}}}
#,profile={id:[I;-2133150165,1794917375,-1534427512,-334773333],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDE2MzQzNzI4YmQzNjUwMTkwNDNhMTFlYWJmODVhYjQ1M2E2NzllYzY4MTc2NjAxOGFkOTc2N2Y4YjM4MDg4ZCJ9fX0="}]}

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={wildeSkin=3},tag=nickSkins] inventory.2 with minecraft:player_head[custom_data={du-in:'nickHead'},custom_name='{"text":"Timekeeper Wilde","color":"white","bold":true,"italic":false}',lore=['{"text":"Nick Wilde","color":"light_purple","bold":true,"italic":true}'],profile={id:[I;694937787,1639336223,-1129107652,-1337073497],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmJjMTMzZWE5M2M4YWVkYjE3ZTljMzAwNGZjNzNjZjM5YjZiNTQyNjA0ZmZmMWZkZDYwMTEyYzE4ZTkzMWU4MyJ9fX0="}]}]
#{SkullOwner:{Id:[I;694937787,1639336223,-1129107652,-1337073497],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmJjMTMzZWE5M2M4YWVkYjE3ZTljMzAwNGZjNzNjZjM5YjZiNTQyNjA0ZmZmMWZkZDYwMTEyYzE4ZTkzMWU4MyJ9fX0="}]}}}
#,profile={id:[I;694937787,1639336223,-1129107652,-1337073497],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmJjMTMzZWE5M2M4YWVkYjE3ZTljMzAwNGZjNzNjZjM5YjZiNTQyNjA0ZmZmMWZkZDYwMTEyYzE4ZTkzMWU4MyJ9fX0="}]}

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={wildeSkin=4},tag=nickSkins] inventory.2 with minecraft:player_head[custom_data={du-in:'nickHead'},custom_name='{"text":"Count Wilde","color":"white","bold":true,"italic":false}',lore=['{"text":"Nick Wilde","color":"light_purple","bold":true,"italic":true}'],profile={id:[I;617195812,-1489416992,-1159238053,56512403],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjQ2M2Y5N2FmY2E5NjY4ZWYwN2VmMDJkNjYyMDZjNDgzZDAwZjg0M2RjMTRmOWYyMzEzMWIxOWI5OWJlNTQxMyJ9fX0="}]}]
#{SkullOwner:{Id:[I;617195812,-1489416992,-1159238053,56512403],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjQ2M2Y5N2FmY2E5NjY4ZWYwN2VmMDJkNjYyMDZjNDgzZDAwZjg0M2RjMTRmOWYyMzEzMWIxOWI5OWJlNTQxMyJ9fX0="}]}}}
#,profile={id:[I;617195812,-1489416992,-1159238053,56512403],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjQ2M2Y5N2FmY2E5NjY4ZWYwN2VmMDJkNjYyMDZjNDgzZDAwZjg0M2RjMTRmOWYyMzEzMWIxOWI5OWJlNTQxMyJ9fX0="}]}

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={wildeSkin=5},tag=nickSkins] inventory.2 with minecraft:player_head[custom_data={du-in:'nickHead'},custom_name='{"text":"Swimsuit Wilde","color":"white","bold":true,"italic":false}',lore=['{"text":"Nick Wilde","color":"light_purple","bold":true,"italic":true}'],profile={id:[I;648384526,-1081785875,-1556674649,681858207],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGI4OTgzOTc2OTQyMDUzNzMzMDM1ZGUzY2JmODUyOWI5MjUzZDhmYzU4MzgwMTgwYzI5MWYzMGE4NmFmMThiMSJ9fX0="}]}]

#{SkullOwner:{Id:[I;648384526,-1081785875,-1556674649,681858207],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGI4OTgzOTc2OTQyMDUzNzMzMDM1ZGUzY2JmODUyOWI5MjUzZDhmYzU4MzgwMTgwYzI5MWYzMGE4NmFmMThiMSJ9fX0="}]}}}
#,profile={id:[I;648384526,-1081785875,-1556674649,681858207],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGI4OTgzOTc2OTQyMDUzNzMzMDM1ZGUzY2JmODUyOWI5MjUzZDhmYzU4MzgwMTgwYzI5MWYzMGE4NmFmMThiMSJ9fX0="}]}

execute if entity @s[scores={skinList=2}] run scoreboard players remove @s skinList 1