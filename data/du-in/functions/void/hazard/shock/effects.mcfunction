execute as @a[x=10046,dx=-1,z=10032,dz=29,y=42] run damage @s 3 minecraft:lightning_bolt
execute as @a[x=10060,dx=-29,z=10047,dz=-1,y=42] run damage @s 3 minecraft:lightning_bolt

particle minecraft:electric_spark 10046 42 10046 -1 0.2 6.5 0 25 force
particle minecraft:electric_spark 10046 42 10046 6.5 0.2 0.5 0 25 force

fill 10038 44 10047 10038 44 10046 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp[lit=false]
fill 10045 44 10039 10046 44 10039 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp[lit=false]
fill 10053 44 10046 10053 44 10047 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp[lit=false]
fill 10046 44 10055 10045 44 10055 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp[lit=false]
