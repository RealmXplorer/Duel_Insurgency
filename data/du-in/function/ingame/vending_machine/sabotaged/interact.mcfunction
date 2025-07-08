advancement revoke @s only du-in:utility/interact_sabotaged

#If Saac or Blake
execute if entity @s[scores={kit=1000..1001}] run function du-in:kit/impostor/sabotage/vending/success

#If in Vending Mode
execute if entity @s[tag=vendingMode,tag=!sus] run function du-in:kit/impostor/sabotage/vending/success

#If in Normal conditions
execute unless entity @s[scores={kit=1000..1001}] if entity @s[tag=!vendingMode,tag=!sus] run function du-in:ingame/vending_machine/sabotaged/wrong_kit

#Fail vending
execute if entity @s[tag=sus] run function du-in:kit/impostor/sabotage/vending/fail
