summon marker 10062 42 10070 {Tags:["flamePillarX","flameMarker","mapSpecific"]}
summon marker 10062 42 10056 {Tags:["flamePillarX","flameMarker","mapSpecific"]}
summon marker 10055 42 10063 {Tags:["flamePillarZ","flameMarker","mapSpecific"]}
summon marker 10069 42 10063 {Tags:["flamePillarZ","flameMarker","mapSpecific"]}

execute at @e[type=marker,tag=flameMarker,limit=1] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 100 .75

schedule function du-in:ingame/void/hazard/fire/summon_fire 3s