# Map Select Actions #

#Timer stop/start#
    execute if items entity @s[tag=partyLeader,tag=countStop] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'countItem'}] run function du-in:lobby/actions/count_go
    execute if items entity @s[tag=partyLeader,tag=!countStop] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'countItem'}] unless score #main mapCountdown matches 200 unless score #main mapCountdown matches 100 unless score #main mapCountdown matches 80 unless score #main mapCountdown matches 60 unless score #main mapCountdown matches 40 unless score #main mapCountdown matches ..20 if score #main mapCountdown matches 1.. run function du-in:lobby/actions/count_stop
#    execute if items entity @s[tag=partyLeader,tag=countStop] weapon.mainhand stick[custom_data={du-in:'countItem'}] run function du-in:lobby/actions/count_go

#Quickmatch
    execute if items entity @s[tag=!teamMode,tag=partyLeader] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'quickItem'}] run function du-in:lobby/actions/quick_play

#Team Select buttons
    execute if entity @s[tag=teamMode] run function du-in:lobby/kit_use/tm

#Go Back
    execute if items entity @s[scores={lobby=2}] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'backItem'}] run function du-in:lobby/actions/map_back
    
    execute if items entity @s[scores={lobby=2}] weapon.mainhand carrot_on_a_stick[custom_data={du-in:'backItem'}] run function du-in:lobby/actions/map_back


    scoreboard players reset @s kitUse
