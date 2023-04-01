effect give @s[tag=!empower] minecraft:slowness 2 4 true
effect give @s[tag=!empower] minecraft:mining_fatigue 2 0 true

effect give @s[tag=empower] minecraft:slowness 4 4 true
effect give @s[tag=empower] minecraft:mining_fatigue 4 0 true

tellraw @s [{"text":"You have been caught in your own web!","bold":true,"color":"red"}]
