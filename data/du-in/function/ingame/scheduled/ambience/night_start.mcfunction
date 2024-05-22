stopsound @a ambient minecraft:ambient.desertamb
stopsound @a ambient minecraft:ambient.forestamb
execute unless entity @a[tag=void,tag=partyLeader] run function du-in:ingame/scheduled/ambience/init
