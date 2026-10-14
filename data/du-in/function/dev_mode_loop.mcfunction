execute if entity @a[scores={thrownBarrier=1..}] run tag @a add win

execute if entity @a[tag=playing] run schedule function du-in:dev_mode_loop 1t