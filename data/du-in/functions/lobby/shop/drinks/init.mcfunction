execute if items entity @s[tag=!bigBoyPotion] weapon.mainhand potion[custom_data={du-in:'bigBoy'}] run tag @s add bigBoyPotion
execute unless items entity @s[tag=bigBoyPotion] weapon.mainhand potion[custom_data={du-in:'bigBoy'}] run tag @s remove bigBoyPotion

execute if items entity @s[tag=!witchesBrew] weapon.mainhand potion[custom_data={du-in:'witchesBrew'}] run tag @s add witchesBrew
execute unless items entity @s[tag=witchesBrew] weapon.mainhand potion[custom_data={du-in:'witchesBrew'}] run tag @s remove witchesBrew

execute if items entity @s[tag=!skrunkSpecial] weapon.mainhand potion[custom_data={du-in:'skrunkSpecial'}] run tag @s add skrunkSpecial
execute unless items entity @s[tag=skrunkSpecial] weapon.mainhand potion[custom_data={du-in:'skrunkSpecial'}] run tag @s remove skrunkSpecial

execute if items entity @s[tag=!rockAndStone] weapon.mainhand potion[custom_data={du-in:'rockAndStone'}] run tag @s add rockAndStone
execute unless items entity @s[tag=rockAndStone] weapon.mainhand potion[custom_data={du-in:'rockAndStone'}] run tag @s remove rockAndStone

execute if entity @s[scores={drinkPotion=1..}] run function du-in:lobby/shop/drinks/drink_potion