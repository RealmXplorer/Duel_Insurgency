#Make flag carriers glow
effect give @s minecraft:glowing 1 0 true

#FLAG GOT ITEM#

execute if items entity @s[tag=!working] hotbar.4 #minecraft:banners run tag @s add flagInvItem
#tag @s[tag=!working,nbt={Inventory:[{tag:{ctfFlag:1b},Slot:4b}]}] add flagInvItem

clear @s[tag=!flagInvItem,tag=!working] #minecraft:banners
item replace entity @s[tag=!flagInvItem,tag=playing,tag=!teamDead,tag=!working,tag=team1] hotbar.4 with minecraft:blue_banner[custom_name='{"text":"Blue Flag","color":"blue","bold":true,"italic":false}']
item replace entity @s[tag=!flagInvItem,tag=playing,tag=!teamDead,tag=!working,tag=team2] hotbar.4 with minecraft:red_banner[custom_name='{"text":"Red Flag","color":"red","bold":true,"italic":false}']

tag @s[tag=!working] remove flagInvItem