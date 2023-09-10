scoreboard players add #main dayTimeSetting 1
execute if score #main dayTimeSetting matches 5.. run scoreboard players set #main dayTimeSetting 1

execute if score #main dayTimeSetting matches 1 run function du-in:other/settings/cycle/times/day
execute if score #main dayTimeSetting matches 2 run function du-in:other/settings/cycle/times/noon
execute if score #main dayTimeSetting matches 3 run function du-in:other/settings/cycle/times/night
execute if score #main dayTimeSetting matches 4 run function du-in:other/settings/cycle/times/midnight

setblock ~ ~ ~-2 stone_button[facing=north] destroy