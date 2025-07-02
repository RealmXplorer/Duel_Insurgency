#If player is either spectating or playing
    #Start Shutdown
    #execute if entity @a[tag=playing,tag=!win,tag=!lose] run function du-in:other/shutdown/start
    #execute if entity @a[tag=spectating,tag=!win,tag=!lose] run function du-in:other/shutdown/start
    execute if entity @a[tag=!lobby,tag=!win,tag=!lose] run function du-in:other/shutdown/start

    #Cancel shutdown if 2 or more people are online
    execute if score #main online matches 2.. if entity @a[tag=playing] run function du-in:other/shutdown/cancel
