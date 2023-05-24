#This function runs if a player has the tag "vented"
    #If on cooldown
    execute if entity @s[tag=sus,scores={ventCooldown=..59}] run function du-in:kit/all/vent/vent_cooldown
    #If not on cooldown and sus
    execute if entity @s[tag=sus,tag=playing,scores={ventCooldown=60..},tag=!flagGot] run function du-in:kit/all/vent/vent_success
    #If Has Flag
    execute if entity @s[tag=flagGot,tag=sus] run function du-in:kit/all/vent/vent_flag
    #If not sus
    execute if entity @s[tag=!sus] run function du-in:kit/all/vent/vent_fail