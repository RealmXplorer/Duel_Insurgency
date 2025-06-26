function du-in:kit/vader/events/breathactive

execute if entity @s[scores={Health=18..}] run function du-in:kit/vader/passive/one
execute if entity @s[scores={Health=13..17}] run function du-in:kit/vader/passive/two
execute if entity @s[scores={Health=10..12}] run function du-in:kit/vader/passive/three
execute if entity @s[scores={Health=6..9}] run function du-in:kit/vader/passive/four
execute if entity @s[scores={Health=3..5}] run function du-in:kit/vader/passive/five
execute if entity @s[scores={Health=..2}] run function du-in:kit/vader/passive/six