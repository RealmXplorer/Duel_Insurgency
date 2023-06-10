
#Loop this function every 5 seconds
execute at @e[type=armor_stand,tag=vendMachine] run playsound minecraft:soundeffect.vending_hum master @a ~ ~ ~ 1 1
execute if predicate du-in:chance/quarter_chance at @e[type=interaction,tag=voidLock] run playsound minecraft:soundeffect.whisper master @a ~ ~ ~ 0.1 1

schedule function du-in:ingame/scheduled/five_sec_loop 5s