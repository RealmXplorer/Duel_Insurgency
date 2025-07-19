execute if entity @a[tag=void] run function du-in:void/end/lose
tag @a add win
tellraw @a {text:"Game shutting down.",bold:true,color:dark_red}
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1 1
schedule function du-in:ingame/endround/end_ending 1s
scoreboard players reset #main shutdown
scoreboard players reset #main shutdownTimer