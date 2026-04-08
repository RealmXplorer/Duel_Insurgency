#$execute unless items entity @s inventory.$(slot) minecraft:player_head run function du-in:lobby/kitmenu/menu/zootopia/$(name) with storage du-in:zootopia$(rank)

$execute unless items entity @s inventory.$(slot) minecraft:player_head run function du-in:kit/$(name)/menu/display with storage du-in:zootopia$(rank) kit