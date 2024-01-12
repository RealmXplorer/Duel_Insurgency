#execute if entity @a[scores={lobby=3}] run function du-in:lobby/scheduled/map_select
execute if entity @a[scores={lobby=2}] run function du-in:lobby/scheduled/map_select

#say success
#schedule clear du-in:lobby/scheduled/gamemode_select
schedule function du-in:lobby/scheduled/two_sec_loop 2s