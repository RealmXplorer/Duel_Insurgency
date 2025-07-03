
#Papyrus Marker
execute if entity @s[scores={papyrusHitTimer=-1..},tag=papyrusFind] run function du-in:kit/papyrus/ability/bones/timer

#Jack Horner Apples
execute if entity @s[tag=poisonApple] unless entity @e[type=minecraft:snowball,distance=..2] run function du-in:kit/jack_horner/ability/poison_apple/explode
kill @s[tag=poisonApple]

#Impostor Meeting Spot
execute if entity @s[tag=meetingSpot,scores={impostTimer=0..}] run function du-in:kit/impostor/ability/meeting_spot

#Clairen Field
execute if entity @s[tag=clairenField] run function du-in:kit/clairen/ability/field

#Kylo Freeze Spot
execute if entity @s[tag=kyloHitPos] run function du-in:kit/kylo/ability/marker
