#Default
execute unless score #main lobbyTheme matches 1.. run return run function du-in:kit/all/kill/msg/default

#If different lobby theme
execute if score #main lobbyTheme matches 1 run return run function du-in:kit/all/kill/msg/halloween
execute if score #main lobbyTheme matches 2 run return run function du-in:kit/all/kill/msg/thanks
execute if score #main lobbyTheme matches 3 run return run function du-in:kit/all/kill/msg/christmas
execute if score #main lobbyTheme matches 4 run function du-in:kit/all/kill/msg/easter