#Breathing
execute if entity @s[gamemode=adventure,scores={breatheTimer=0..},tag=!teamDead] run function du-in:kit/vader/events/breathe_timer

#Berserk
execute if entity @s[scores={Health=18..}] run function du-in:kit/vader/berserk/one
execute if entity @s[scores={Health=13..17}] run function du-in:kit/vader/berserk/two
execute if entity @s[scores={Health=10..12}] run function du-in:kit/vader/berserk/three
execute if entity @s[scores={Health=6..9}] run function du-in:kit/vader/berserk/four
execute if entity @s[scores={Health=3..5}] run function du-in:kit/vader/berserk/five
execute if entity @s[scores={Health=..2}] run function du-in:kit/vader/berserk/six