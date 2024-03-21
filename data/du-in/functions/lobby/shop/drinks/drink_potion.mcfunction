execute if entity @s[tag=bigBoyPotion] run attribute @s generic.scale base set 2

execute if entity @s[tag=witchesBrew] run item replace entity @s armor.head with minecraft:carved_pumpkin

execute if entity @s[tag=skrunkSpecial] run attribute @s generic.scale base set 0.1

execute if entity @s[tag=rockAndStone] run effect give @s nausea infinite 10 true

clear @s glass_bottle
scoreboard players reset @s drinkPotion
