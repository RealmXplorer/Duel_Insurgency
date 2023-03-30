execute unless entity @s[scores={pylonNum=3}] run scoreboard players add @s ambience 1

execute unless entity @s[scores={pylonNum=3}] run scoreboard players set @s[scores={ambience=2540..}] ambience 0
execute if entity @s[scores={ambience=1}] unless entity @s[scores={pylonNum=1..3}] run playsound minecraft:music.suffocation master @s ~ ~ ~ 0.25 1 1
execute if entity @s[scores={ambience=1,pylonNum=1..2}] run playsound minecraft:music.suffocation master @s ~ ~ ~ 0.05 1 1

execute if entity @s[scores={pylonNum=1..2}] run function du-in:music/void/corruption
execute if entity @s[scores={pylonNum=3}] run function du-in:music/void/vain_pursuit