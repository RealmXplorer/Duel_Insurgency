schedule function du-in:lobby/map_select/timers/ten 100t
schedule function du-in:lobby/map_select/timers/five 200t
schedule function du-in:lobby/map_select/timers/four 220t
schedule function du-in:lobby/map_select/timers/three 240t
schedule function du-in:lobby/map_select/timers/two 260t
schedule function du-in:lobby/map_select/timers/one 280t


#execute if score #main mapCountdown matches 200 run function du-in:lobby/map_select/timers/ten

#execute if score #main mapCountdown matches 100 run function du-in:lobby/map_select/timers/five

#execute if score #main mapCountdown matches 80 run function du-in:lobby/map_select/timers/four

#execute if score #main mapCountdown matches 60 run function du-in:lobby/map_select/timers/three

#execute if score #main mapCountdown matches 40 run function du-in:lobby/map_select/timers/two

#execute if score #main mapCountdown matches 20 run function du-in:lobby/map_select/timers/one
