advancement revoke @s only du-in:utility/interact_sabotaged

execute if entity @s[scores={kit=1000..1001}] run function du-in:kit/impostor/sabotage/vending/success

execute unless entity @s[scores={kit=1000..1001}] unless entity @s[scores={kit=1003}] run function du-in:ingame/vending_machine/wrong_kit_sabotaged

execute if entity @s[scores={kit=1003}] run function du-in:kit/impostor/sabotage/vending/fail
