summon marker 10046.007 42 10030.5 {Tags:["bridgeX","bridgeMarker","mapSpecific"]}
summon marker 10046.007 42 10063.5 {Tags:["bridgeX","bridgeMarker","mapSpecific"]}


execute at @e[type=marker,tag=bridgeMarker,limit=1] run playsound minecraft:asriel.charge master @a ~ ~ ~ 100000 .5
execute at @e[type=marker,tag=bridgeMarker,limit=1] run playsound minecraft:asriel.charge master @a ~ ~ ~ 100000 .6

schedule function du-in:void/hazard/bridge/summon_light 3s