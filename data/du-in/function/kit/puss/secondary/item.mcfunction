execute if entity @s[tag=!gatitoBlade] run item replace entity @s hotbar.1 with warped_fungus_on_a_stick[item_name={text:"Gatito Blade",color:dark_gray,bold:true},lore=[{text:"Right click to switch to Gatito Blade!"}],enchantment_glint_override=true,unbreakable={},item_model="du-in:other/weap_switch"] 1

execute if entity @s[tag=gatitoBlade] unless entity @s[scores={pussSkin=1..}] run item replace entity @s hotbar.1 with warped_fungus_on_a_stick[item_name={text:"Blade of Justice",color:dark_gray,bold:true},lore=[{text:"Right click to switch to the Blade of Justice!"}],enchantment_glint_override=true,unbreakable={},item_model="du-in:other/weap_switch"] 1
execute if entity @s[scores={pussSkin=1},tag=gatitoBlade] run item replace entity @s hotbar.1 with warped_fungus_on_a_stick[item_name={text:"Extending Blade",color:dark_gray,bold:true},lore=[{text:"Right click to switch to the Extending Blade!"}],enchantment_glint_override=true,unbreakable={},item_model="du-in:other/weap_switch"] 1

#ff9f21
#0392FF