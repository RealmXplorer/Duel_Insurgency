#Timer for lobby sidebar for scroll
execute if entity @a[tag=partyLeader,scores={lobby=1..}] unless entity @a[tag=partyLeader,tag=sidebarDisable] unless score #main pylonsDestroyed matches 3 run function du-in:lobby/sidebar

#Test for number of people on team
execute if entity @a[tag=teamMode] run function du-in:lobby/team_select/team_count

#Test for number of people with kit picked
execute if entity @a[scores={lobby=2}] run scoreboard players set #main kitOnline 0
execute as @a[tag=ready,tag=lobby] run scoreboard players add #main kitOnline 1

#Run if players are in map select
execute if entity @a[tag=partyLeader,scores={lobby=2}] run function du-in:lobby/map_select/general