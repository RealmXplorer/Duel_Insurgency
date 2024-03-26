#Timer for lobby sidebar for scroll
scoreboard players add #main sidebarTimer 1
execute if score #main sidebarTimer matches 481.. run scoreboard players set #main sidebarTimer 0

#Test for number of people on team
execute if entity @a[tag=teamMode] run function du-in:lobby/team_count

#Test for number of people with kit picked
execute if entity @a[scores={lobby=2}] run scoreboard players set #main kitOnline 0
execute as @a[tag=ready,tag=lobby] run scoreboard players add #main kitOnline 1

#Start game#
execute if score #main startSeq matches 1.. run function du-in:ingame/startround/timer/start_timer

#Pick Map#
execute if score #main mapCountdown matches ..1 run function du-in:maps/start/init
