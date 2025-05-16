execute at @s run summon minecraft:arrow ~ ~2.1 ~ {Motion:[0.0,-10.0,0.0],Fire:750,pickup:0b,player:1b,damage:.3d,Tags:["asgoreFireStarter","mapSpecific"],SoundEvent:"entity.player.hurt_on_fire"}
effect give @s minecraft:slowness 4 4 true
effect give @s minecraft:mining_fatigue 4 0 true

tellraw @s [{text:"You have been caught in a massive flaming spider web!",bold:true,color:red}]