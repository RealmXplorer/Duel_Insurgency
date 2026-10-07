#ARMOR GIVING#
tag @s add armor

execute if entity @s[tag=!stolen] run function du-in:kit/all/armor/non_stolen

execute if entity @s[tag=stolen] run function du-in:kit/villager/armor

execute if entity @s[tag=noClothes] run function du-in:kit/all/armor/underwear/pick