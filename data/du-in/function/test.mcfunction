execute as @e[type=minecraft:mannequin] run data modify entity @s Motion set from entity @e[type=zombie,limit=1] Motion

tp @e[type=mannequin] @e[type=zombie,limit=1]
execute as @e[type=mannequin] at @s run tp @s ~ ~ ~ facing entity Realm_Xplorer

effect give @e[type=zombie] minecraft:invisibility infinite 1 true
effect give @e[type=zombie] minecraft:speed infinite 3 true

execute as @a[predicate=du-in:ambience/audience] run say yes

return 1