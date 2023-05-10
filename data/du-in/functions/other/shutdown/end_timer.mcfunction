execute if entity @a run tag @r add win
tellraw @a {"text":"Game shutting down.","bold":true,"color":"dark_red"}
execute at @a[tag=falseWin] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1 1
#scoreboard players set #main endTime 5
schedule function du-in:ingame/endround/end_ending 1s
scoreboard players reset #main shutdown
scoreboard players reset #main shutdownTimer