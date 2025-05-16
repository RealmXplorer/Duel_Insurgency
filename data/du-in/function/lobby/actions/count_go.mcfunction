#This function resumes the map select countdown
tag @s remove countStop
tellraw @a [{selector:"@s"},{text:" has resumed the countdown!",color:gray}]
#clear @s carrot_on_a_stick[custom_data={du-in:'countItem'}]
clear @s carrot_on_a_stick[custom_data={du-in:'countItem'}]

#clear @s carrot_on_a_stick[custom_data={du-in:'countItem'}]