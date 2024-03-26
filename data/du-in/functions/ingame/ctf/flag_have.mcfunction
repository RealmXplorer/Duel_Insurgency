#Make flag carriers glow
effect give @s minecraft:glowing 1 0 true

#FLAG GOT ITEM#

# execute if items entity @s hotbar.4 #minecraft:banners run tag @s add flagInvItem

execute unless items entity @s hotbar.4 #minecraft:banners run function du-in:ingame/ctf/flag_give

# clear @s[tag=!flagInvItem] #minecraft:banners
# item replace entity @s[tag=!flagInvItem,tag=playing,tag=!teamDead,tag=team1] hotbar.4 with minecraft:blue_banner[custom_name='{"text":"Blue Flag","color":"blue","bold":true,"italic":false}']
# item replace entity @s[tag=!flagInvItem,tag=playing,tag=!teamDead,tag=team2] hotbar.4 with minecraft:red_banner[custom_name='{"text":"Red Flag","color":"red","bold":true,"italic":false}']

# tag @s remove flagInvItem