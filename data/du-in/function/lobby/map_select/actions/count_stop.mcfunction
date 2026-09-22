#This function pauses the Map select countdown
tag @s add countStop
tellraw @a [{selector:"@s"},{text:" has stopped the countdown!",color:gray}]
clear @s carrot_on_a_stick[custom_data={du-in:'countItem'}]

# schedule clear du-in:lobby/map_select/timers/ten
# schedule clear du-in:lobby/map_select/timers/five
# schedule clear du-in:lobby/map_select/timers/four
# schedule clear du-in:lobby/map_select/timers/three
# schedule clear du-in:lobby/map_select/timers/two
# schedule clear du-in:lobby/map_select/timers/one