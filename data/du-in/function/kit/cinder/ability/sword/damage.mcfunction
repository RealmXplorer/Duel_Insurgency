execute if entity @s[predicate=!du-in:effect/is_on_fire,tag=!inField] unless block ~ ~ ~ water run summon minecraft:arrow ~ ~2.5 ~ {Motion:[0.0,-10.0,0.0],Fire:750,pickup:0b,player:1b,damage:1d,Tags:["asgoreFireStarter","mapSpecific"],SoundEvent:"entity.player.hurt_on_fire"}
damage @s[tag=!inField] 8 fireball

execute if entity @s[tag=inField] run playsound minecraft:clairen.deflect master @a ~ ~ ~ 1 1