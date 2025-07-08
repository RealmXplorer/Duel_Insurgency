advancement revoke @s only du-in:utility/interact_vending

execute if entity @s[scores={kit=1000}] run function du-in:kit/saac/vending/vend

execute if entity @s[scores={kit=1001}] run function du-in:kit/paz/card/spend

execute if entity @s[tag=sus] run function du-in:kit/impostor/sabotage/vending

execute if entity @s[tag=!vendingMode,tag=!sus] unless entity @s[scores={kit=1000..1001}] run function du-in:ingame/vending_machine/wrong_kit
execute if entity @s[tag=vendingMode,tag=!sus] unless entity @s[scores={kit=1000..1001}] run function du-in:kit/saac/vending/vend

#execute if entity @s[tag=vended] run function du-in:ingame/vending_machine/has_vended