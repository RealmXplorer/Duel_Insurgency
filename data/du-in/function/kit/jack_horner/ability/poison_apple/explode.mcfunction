summon minecraft:creeper ~ ~ ~ {Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"-",PersistenceRequired:1b,NoAI:1b,powered:0b,ExplosionRadius:2b,Fuse:0,ignited:1b,Attributes:[{Name:attackKnockback,Base:1}],Silent:1b,Tags:["projectile"]}
# particle dust_color_transition 0.153 0.890 0.071 3 0.024 0.051 0.020 ~ ~ ~ 1 1 1 100 100 normal
particle dust_color_transition{from_color:[0.153f,0.890f,0.071f], scale:3.0f, to_color:[0.024f,0.051f,0.020f]} ~ ~ ~ 1 1 1 100 100 normal
playsound minecraft:block.moss.break master @a ~ ~ ~ 1000 1
playsound minecraft:block.moss.fall master @a ~ ~ ~ 1000 1
