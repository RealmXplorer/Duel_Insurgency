scoreboard players add #main alarmCount 1

execute if score #main alarmCount matches 4 run function du-in:void/hazard/shock/electrocute

execute if score #main alarmCount matches ..3 as @a at @s run playsound minecraft:sus.emerg master @s ~ ~ ~ .5 .5


fill 10038 44 10047 10038 44 10046 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp[lit=false]
fill 10045 44 10039 10046 44 10039 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp[lit=false]
fill 10053 44 10046 10053 44 10047 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp[lit=false]
fill 10046 44 10055 10045 44 10055 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp[lit=false]

execute if score #main alarmCount matches ..3 run schedule function du-in:void/hazard/shock/alarm_start 22t

#10045 42 10047