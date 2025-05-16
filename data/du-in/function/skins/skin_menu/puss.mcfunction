#Functionality
execute if entity @s[scores={skinList=..0},tag=pussSkins] run function du-in:skins/puss
execute if entity @s[scores={skinList=..0},tag=!pussSkins] run function du-in:skins/skin_menu/buy/puss/try

#Void Head
execute if score #main pylonsDestroyed matches 3.. run item replace entity @s inventory.11 with minecraft:player_head[custom_data={du-in:'pussHead'},custom_name={text:"I SEE YOU",color:gray,bold:true},lore=[{text:"Puss in Boots",color:green,bold:true,"italic":true}],profile={id:[I;318736035,-1403303440,-1876061664,-609467480],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}] 1

#Locked Head
execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[tag=!pussSkins] inventory.11 with minecraft:player_head[custom_data={du-in:'pussHead'},custom_name={text:"Puss Skins",color:white,bold:true,italic:false},lore=[{text:"200 Diamonds",color:red,bold:true,"italic":true}],profile={id:[I;1468365184,-1779283512,-1591494131,727618947],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjViMzZjNmYwMTMzYmVhMzgwY2NmYWE0MGJkMDlkM2IwNGFiN2Q3NWRhZmViNzFiMzNmM2ZhMThkNmU0OWJiMCJ9fX0="}]}] 1

#Display Heads
execute unless score #main pylonsDestroyed matches 3.. unless entity @s[scores={pussSkin=1..}] run item replace entity @s[tag=pussSkins] inventory.11 with minecraft:player_head[custom_data={du-in:'pussHead'},custom_name={text:"Default",color:white,bold:true,italic:false},lore=[{text:"Puss in Boots",color:green,bold:true,"italic":true}],profile={id:[I;-519165600,-420199686,-1290829664,-623163008],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWEwYWEwMjIzMTU1OGEzYTAxNjNhNTIwMTFlNWRmOTRiOTRhNGNiNGM1OWZjZmMyNDUxNjU1ZTViMjY5ZTlmNCJ9fX0="}]}]
#{SkullOwner:{Id:[I;-519165600,-420199686,-1290829664,-623163008],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWEwYWEwMjIzMTU1OGEzYTAxNjNhNTIwMTFlNWRmOTRiOTRhNGNiNGM1OWZjZmMyNDUxNjU1ZTViMjY5ZTlmNCJ9fX0="}]}}}
#,profile={id:[I;-519165600,-420199686,-1290829664,-623163008],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWEwYWEwMjIzMTU1OGEzYTAxNjNhNTIwMTFlNWRmOTRiOTRhNGNiNGM1OWZjZmMyNDUxNjU1ZTViMjY5ZTlmNCJ9fX0="}]}

execute unless score #main pylonsDestroyed matches 3.. run item replace entity @s[scores={pussSkin=1},tag=pussSkins] inventory.11 with minecraft:player_head[custom_data={du-in:'pussHead'},custom_name={text:"Kitty Softpaws",color:white,bold:true,italic:false},lore=[{text:"Puss in Boots",color:green,bold:true,"italic":true}],profile={id:[I;-1838143044,-29146820,-1697818104,-251943077],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTM1ZWI3ZmVlZDU3YTQ3M2Q3Y2JlMWU4ZWQ1MDEzODA0MTFlZmE1ZTY5ZjFkOTRiMTEzZjFmMmI5ZWQxNGNmMCJ9fX0="}]}]
#{SkullOwner:{Id:[I;-1838143044,-29146820,-1697818104,-251943077],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTM1ZWI3ZmVlZDU3YTQ3M2Q3Y2JlMWU4ZWQ1MDEzODA0MTFlZmE1ZTY5ZjFkOTRiMTEzZjFmMmI5ZWQxNGNmMCJ9fX0="}]}}}
#,profile={id:[I;-1838143044,-29146820,-1697818104,-251943077],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTM1ZWI3ZmVlZDU3YTQ3M2Q3Y2JlMWU4ZWQ1MDEzODA0MTFlZmE1ZTY5ZjFkOTRiMTEzZjFmMmI5ZWQxNGNmMCJ9fX0="}]}

execute if entity @s[scores={skinList=10}] run scoreboard players remove @s skinList 1
