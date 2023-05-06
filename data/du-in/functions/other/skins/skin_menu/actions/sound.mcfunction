playsound minecraft:soundeffect.unlock master @s ~ ~ ~ 2 2

execute if entity @s[scores={thrownHead=1..}] run function du-in:other/clear_ground_items
