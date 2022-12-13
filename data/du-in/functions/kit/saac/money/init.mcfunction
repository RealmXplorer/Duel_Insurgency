# Give Quarter
execute if entity @s[scores={saacMoneyDollar=..2}] run function du-in:kit/saac/money/quarter

#Turn Quarters into Dollars
execute if entity @s[scores={saacMoneyCheck=100..}] run function du-in:kit/saac/money/dollar

#Too much money
execute if entity @s[scores={saacMoneyCheck=0..,saacMoneyDollar=3..}] run function du-in:kit/saac/money/rich
