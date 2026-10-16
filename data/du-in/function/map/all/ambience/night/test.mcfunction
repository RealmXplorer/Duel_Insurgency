execute if predicate du-in:ambience/night_start run function du-in:map/all/ambience/night/start
execute if predicate du-in:ambience/night_end run function du-in:map/all/ambience/night/end

execute if entity @a[tag=playing] run schedule function du-in:map/all/ambience/night/test 1t