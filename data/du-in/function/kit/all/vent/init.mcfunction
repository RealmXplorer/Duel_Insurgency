#This function runs if a player interacts with a "vent" interaction.
    #If on cooldown
    execute if entity @s[tag=sus,scores={ventCooldown=1..}] run function du-in:kit/all/vent/cooldown

    #If not on cooldown and sus
    execute if entity @s[tag=sus,tag=playing,tag=!flagGot] unless entity @s[scores={ventCooldown=1..}] run function du-in:kit/all/vent/success
    #If Has Flag
    execute if entity @s[tag=sus,tag=flagGot] run function du-in:kit/all/vent/flag
    #If not sus
    execute if entity @s[tag=!sus] run function du-in:kit/all/vent/fail

advancement revoke @s only du-in:utility/interact_vent
