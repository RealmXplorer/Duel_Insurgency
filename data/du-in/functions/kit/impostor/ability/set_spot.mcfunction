kill @e[type=marker,tag=meetingSpot]
tag @s[tag=!sabotaged] add calledMeeting
summon minecraft:marker ~ ~ ~ {Tags:["meetingSpot"]}
tag @s add meetingCall
clear @s minecraft:carrot_on_a_stick