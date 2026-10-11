scoreboard players set #iframe running 1

execute as @a[tag=bulletIFrame] run function du-in:kit/willo/revolver/frame/timer

execute if entity @a[tag=bulletIFrame] run return run schedule function du-in:kit/willo/revolver/frame/loop 1t replace

scoreboard players set #iframe running 0