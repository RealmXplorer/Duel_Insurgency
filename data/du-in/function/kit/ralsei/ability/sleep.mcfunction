execute if entity @s[scores={ralseiTimer=60}] run tellraw @s ["",{text:"You're sooo sleepy...",bold:true,color:red}]

execute if entity @s[scores={ralseiTimer=51..60}] run effect give @s minecraft:slowness 1 1 true
execute if entity @s[scores={ralseiTimer=41..50}] run effect give @s minecraft:slowness 1 2 true
execute if entity @s[scores={ralseiTimer=31..40}] run effect give @s minecraft:slowness 1 3 true
execute if entity @s[scores={ralseiTimer=21..30}] run effect give @s minecraft:slowness 1 4 true

execute if entity @s[scores={ralseiTimer=30}] run effect give @s minecraft:darkness 4 100 true
execute if entity @s[scores={ralseiTimer=30}] run effect give @s minecraft:blindness 4 100 true

execute if entity @s[scores={ralseiTimer=11..20}] run effect give @s minecraft:slowness 1 5 true

execute if entity @s[scores={ralseiTimer=20}] run playsound minecraft:ralsei.snore master @a ~ ~ ~ 1 1
execute if entity @s[scores={ralseiTimer=20},predicate=du-in:chance/low_chance] run tellraw @s ["",{text:"A Mimir",bold:true,color:red}]

execute if entity @s[scores={ralseiTimer=1..10}] run effect give @s minecraft:slowness 1 6 true

scoreboard players remove @s[scores={ralseiTimer=-1..}] ralseiTimer 1
scoreboard players reset @s[scores={ralseiTimer=..0}] ralseiTimer