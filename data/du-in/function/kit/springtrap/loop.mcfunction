execute as @a[tag=springtrap,tag=!kitMenu] at @s run function du-in:kit/springtrap/constant

execute if entity @a[tag=springtrap] run schedule function du-in:kit/springtrap/loop 5t