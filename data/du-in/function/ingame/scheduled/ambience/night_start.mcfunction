stopsound @a ambient du-in:ambient.desert
stopsound @a ambient du-in:ambient.forest
execute unless entity @a[tag=void,tag=partyLeader] run function du-in:ingame/scheduled/ambience/init
