execute if entity @s[tag=killMsg] run function du-in:kit/pawbert/events/kill_msg
#execute if entity @s[tag=!hasVial,tag=!stolen] run function du-in:kit/pawbert/secondary/give_vial

execute if items entity @s[tag=!stolen] hotbar.* minecraft:blaze_rod[item_model="du-in:other/venom_empty"] unless items entity @s[tag=!stolen] hotbar.* gunpowder run function du-in:kit/pawbert/secondary/give_vial