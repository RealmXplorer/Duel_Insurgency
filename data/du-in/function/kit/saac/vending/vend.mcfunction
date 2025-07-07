#If too many kickstarts
execute if entity @s[scores={saacCarry=4..}] run function du-in:kit/saac/vending/max

#If no money
execute if entity @s[scores={saacMoney=..99}] run function du-in:ingame/vending_machine/titles/poor

#If success
execute if entity @s[scores={saacCarry=..3,saacMoney=100..}] run function du-in:kit/saac/vending/give