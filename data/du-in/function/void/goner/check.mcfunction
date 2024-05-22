execute as @e[type=skeleton,tag=gonerThing] at @s unless entity @a[gamemode=adventure,tag=void,distance=..19] run tp @s ~ -100 ~
execute as @e[type=skeleton,tag=gonerThing] at @s unless entity @a[gamemode=adventure,tag=void,distance=..19] run kill @s

schedule function du-in:void/goner/check 5s