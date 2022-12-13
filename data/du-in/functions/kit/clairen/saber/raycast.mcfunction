execute if entity @s[nbt={SelectedItem:{tag:{clairenSaber:1b}}}] as @e[dx=0,tag=!saberRaycast,tag=!afflicted] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,tag=!saberRaycast,tag=!afflicted] positioned ~0.99 ~0.99 ~0.99 run function du-in:kit/clairen/saber/hit

#execute if entity @s[nbt={SelectedItem:{tag:{clairenSaber:1b}}}] as @e[dx=0,tag=!saberRaycast,tag=!afflicted] run function du-in:kit/clairen/saber/hit


scoreboard players add #main saberRaycast 1 

execute if score #main saberRaycast matches ..70 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #du-in:sans_valid run function du-in:kit/clairen/saber/raycast