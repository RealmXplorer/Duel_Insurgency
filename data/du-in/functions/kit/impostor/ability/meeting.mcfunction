# execute if entity @e[type=marker,tag=meetingSpot,scores={impostTimer=0..}] run effect give @a[tag=meeting] minecraft:fire_resistance 1 255 true

# execute if entity @e[type=marker,tag=meetingSpot,scores={impostTimer=29}] as @a[tag=meeting] at @s run playsound minecraft:sus.emerg master @a ~ ~ ~ 20 1
# execute if entity @e[type=marker,tag=meetingSpot,scores={impostTimer=29}] as @a[tag=meeting] at @s run title @a title {"text":"Emergency Meeting!","color":"red","bold":true}


# execute if entity @e[type=marker,tag=meetingSpot,scores={impostTimer=..0}] as @e[tag=meetingSpot] at @s run tp @a[tag=meeting,tag=!flagGot,tag=!calledMeeting] ~ ~ ~
# execute if entity @e[type=marker,tag=meetingSpot,scores={impostTimer=..0}] run tag @a[tag=calledMeeting] remove calledMeeting
# execute if entity @e[type=marker,tag=meetingSpot,scores={impostTimer=..0}] run tag @a[tag=meeting] remove meeting

# kill @e[type=marker,tag=meetingSpot,scores={impostTimer=..0}]

effect give @a[tag=meeting] minecraft:fire_resistance 1 255 true

execute as @e[type=marker,tag=meetingSpot] at @s run tp @a[tag=meeting,tag=!flagGot,tag=!calledMeeting] ~ ~ ~
tag @a[tag=calledMeeting] remove calledMeeting
tag @a[tag=meeting] remove meeting

kill @e[type=marker,tag=meetingSpot]