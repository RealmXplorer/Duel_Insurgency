#This function runs if a player interacts with a "vent" interaction.
 advancement revoke @s only du-in:utility/interact_vent

    #If not sus
    execute if entity @s[tag=!sus] run return run function du-in:kit/all/vent/fail

    #If Has Flag
    execute if entity @s[tag=flagGot] run return run function du-in:kit/all/vent/flag

    #If on cooldown
    # execute if entity @s[tag=sus,scores={ventCooldown=1..}] run return run function du-in:kit/all/vent/cooldown
    execute if entity @s[tag=ventCooldown] run return run function du-in:kit/all/vent/cooldown

    #If not on cooldown and sus
    # execute if entity @s[tag=sus,tag=playing,tag=!flagGot] unless entity @s[scores={ventCooldown=1..}] run function du-in:kit/all/vent/success
    function du-in:kit/all/vent/success

