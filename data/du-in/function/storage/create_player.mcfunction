#Create custom player storage
    #Set global "num" value to 0.
    data modify storage du-in:main player set value {"num":0}

    #Set the global storage's "num" value to the current player's "playerNum"
    execute store result storage du-in:main player.num int 1 run scoreboard players get @s player

    #Create a new storage using that player's "playerNum"
    function du-in:storage/set_player with storage du-in:main player