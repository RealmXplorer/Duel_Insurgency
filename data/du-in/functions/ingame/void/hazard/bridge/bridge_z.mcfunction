summon marker 10062.5 42 10046.998 {Tags:["bridgeZ","bridgeMarker","mapSpecific"]}
summon marker 10029.5 42 10046.998 {Tags:["bridgeZ","bridgeMarker","mapSpecific"]}


execute at @e[type=marker,tag=bridgeMarker,limit=1] run playsound minecraft:asriel.charge master @a ~ ~ ~ 100000 .5
execute at @e[type=marker,tag=bridgeMarker,limit=1] run playsound minecraft:asriel.charge master @a ~ ~ ~ 100000 .6

schedule function du-in:ingame/void/hazard/bridge/summon_light 3s

#10062.5 42 10046.998 Z
#10029.5 42 10046.998 Z