execute store result score @s jermaOnion run random value 1..2

execute if entity @s[scores={jermaOnion=1}] run function du-in:kit/jerma/secondary/eat_good
execute if entity @s[scores={jermaOnion=2}] run function du-in:kit/jerma/secondary/eat_poisoned