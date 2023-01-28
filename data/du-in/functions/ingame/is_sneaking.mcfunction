#execute if entity @s[scores={parryCooldown=..10},tag=!parryStart] run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1
tag @s add parryStart
execute if entity @s[tag=!gasterInvisible,gamemode=adventure,tag=!inField] unless entity @s[scores={floweyHitTimer=0..}] unless entity @s[scores={gasterTimer=0..}] run effect give @s minecraft:glowing 1 0 true
execute if entity @s[scores={parryHit=1..,parryCooldown=..5}] run function du-in:ingame/parry
