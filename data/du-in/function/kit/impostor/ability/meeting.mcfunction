effect give @a[tag=meeting] minecraft:fire_resistance 1 255 true

execute as @e[type=marker,tag=meetingSpot] at @s run tp @a[tag=meeting,tag=!flagGot,tag=!calledMeeting] ~ ~ ~
tag @a[tag=calledMeeting] remove calledMeeting
tag @a[tag=meeting] remove meeting

kill @e[type=marker,tag=meetingSpot]