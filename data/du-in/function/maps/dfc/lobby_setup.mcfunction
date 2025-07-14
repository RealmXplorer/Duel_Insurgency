#Set all to map select
#scoreboard players set #main lobby 2
scoreboard players set @a lobby 2

#Set up contestants
execute if score @s dfcQueue = #main dfcQueue run function du-in:maps/dfc/contestant_setup

#Set up audience members
execute unless score @s[tag=!audience] dfcQueue = #main dfcQueue run function du-in:maps/dfc/audience_setup
