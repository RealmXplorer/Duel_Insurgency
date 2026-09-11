advancement revoke @s only du-in:kit/interact_trap

#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

function du-in:kit/willo/ability/trap/remove_test with storage du-in:main player