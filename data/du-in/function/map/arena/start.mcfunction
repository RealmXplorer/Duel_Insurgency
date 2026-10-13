#Pick arena type
execute if score #main lobbyTheme matches 1 run return run function du-in:map/arena/start/spooky
execute if score #main lobbyTheme matches 2 run return run function du-in:map/arena/start/harvest
execute if score #main lobbyTheme matches 3 run return run function du-in:map/arena/start/cozy
execute if score #main lobbyTheme matches 4 run return run function du-in:map/arena/start/easter
function du-in:map/arena/start/default