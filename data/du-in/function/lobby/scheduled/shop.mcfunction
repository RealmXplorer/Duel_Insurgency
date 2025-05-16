#SHOP GO BACK#
#execute unless items entity @s hotbar.8 minecraft:carrot_on_a_stick[custom_data={du-in:'backItem'}] run function du-in:lobby/item/back
execute unless items entity @s hotbar.8 minecraft:carrot_on_a_stick[custom_data={du-in:'backItem'}] run function du-in:lobby/item/back

execute unless items entity @s[tag=partyLeader] hotbar.4 minecraft:carrot_on_a_stick[custom_data={du-in:'gameSettingItem'}] run function du-in:lobby/item/game_settings

title @s actionbar {text:"Open inventory to change skins!",color:green,bold:true}