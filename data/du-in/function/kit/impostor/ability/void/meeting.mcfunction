

execute as @e[tag=meetingSpot] at @s run tp @e[type=skeleton,tag=meeting] ~ ~ ~
tag @e[type=skeleton,tag=meeting] remove meeting

kill @e[type=marker,tag=meetingSpot]