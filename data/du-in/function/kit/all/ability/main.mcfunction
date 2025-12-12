#Run Primary
    execute if entity @s[scores={kitUse=1..}] run function du-in:kit/all/ability/init

#Run Secondary
    execute if entity @s[scores={secKitUse=1..}] run function du-in:kit/all/ability/activate_sec

#Primary Ability timer
    execute if entity @s[level=1..,tag=!teamDead] run function du-in:kit/all/ability/timer
