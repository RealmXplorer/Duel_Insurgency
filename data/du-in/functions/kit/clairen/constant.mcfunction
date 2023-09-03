execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/clairen/sounds/hit


# Weapon #
execute if entity @s[tag=!stolen,tag=!teamDead] unless entity @s[scores={weapCount=1}] run function du-in:kit/clairen/weapon

#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] wooden_sword 0

# Armor #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/clairen/armor

# Ability #
execute if entity @s[tag=kitActions] run function du-in:kit/clairen/ability/init

execute if entity @s[level=1] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Energy Field","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Creates and energy field","color":"dark_gray"}','{"text":"blocking projectiles and","color":"dark_gray"}','{"text":"strengthening all within.","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:417,weaponItem:1b}

attribute @s[tag=!stolen] generic.movement_speed base set 0.14
#0.125
effect give @s[predicate=!du-in:effect/has_night_vision,tag=!stolen] minecraft:night_vision infinite 100 true
attribute @s[tag=!stolen,tag=!pussFear] generic.knockback_resistance base set 0.03