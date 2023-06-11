#Make flag carriers glow
effect give @s minecraft:glowing 1 0 true

#FLAG GOT ITEM#
tag @s[tag=!working,nbt={Inventory:[{tag:{ctfFlag:1b},Slot:4b}]}] add flagInvItem
clear @s[tag=!flagInvItem,tag=!working] #minecraft:banners
item replace entity @s[tag=!flagInvItem,tag=playing,tag=!teamDead,tag=!working,tag=team1] hotbar.4 with minecraft:blue_banner{display:{Name:'{"text":"Blue Flag","color":"blue","bold":true,"italic":false}'},fixedItem:1b,weaponItem:1b,ctfFlag:1b}
item replace entity @s[tag=!flagInvItem,tag=playing,tag=!teamDead,tag=!working,tag=team2] hotbar.4 with minecraft:red_banner{display:{Name:'{"text":"Red Flag","color":"red","bold":true,"italic":false}'},fixedItem:1b,weaponItem:1b,ctfFlag:1b}

# item replace entity @s[tag=!flagInvItem,tag=playing,tag=!teamDead,tag=!working,tag=team1,tag=!ownFlag] hotbar.4 with minecraft:blue_banner{display:{Name:'{"text":"Blue Flag","color":"blue","bold":true,"italic":false}'},fixedItem:1b,weaponItem:1b,ctfFlag:1b}
# item replace entity @s[tag=!flagInvItem,tag=playing,tag=!teamDead,tag=!working,tag=team2,tag=!ownFlag] hotbar.4 with minecraft:red_banner{display:{Name:'{"text":"Red Flag","color":"red","bold":true,"italic":false}'},fixedItem:1b,weaponItem:1b,ctfFlag:1b}

# item replace entity @s[tag=!flagInvItem,tag=playing,tag=!teamDead,tag=!working,tag=team1,tag=ownFlag] hotbar.4 with minecraft:red_banner{display:{Name:'{"text":"Red Flag","color":"red","bold":true,"italic":false}'},fixedItem:1b,weaponItem:1b,ctfFlag:1b}
# item replace entity @s[tag=!flagInvItem,tag=playing,tag=!teamDead,tag=!working,tag=team2,tag=ownFlag] hotbar.4 with minecraft:blue_banner{display:{Name:'{"text":"Blue Flag","color":"blue","bold":true,"italic":false}'},fixedItem:1b,weaponItem:1b,ctfFlag:1b}

tag @s[tag=!working] remove flagInvItem