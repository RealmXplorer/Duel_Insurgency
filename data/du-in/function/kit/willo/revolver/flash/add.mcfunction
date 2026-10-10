execute store result score @s muzzleFlash run random value 1..4
execute if entity @s[scores={muzzleFlash=1}] run item modify entity @s armor.head du-in:muzzle_flash1
execute if entity @s[scores={muzzleFlash=2}] run item modify entity @s armor.head du-in:muzzle_flash2
execute if entity @s[scores={muzzleFlash=3}] run item modify entity @s armor.head du-in:muzzle_flash3

tag @s remove muzzleFlash
tag @s add muzzleClear

schedule function du-in:kit/willo/revolver/flash/test 1t