
#Loop this function every 5 seconds
execute at @e[type=armor_stand,tag=vendMachine] run playsound du-in:sfx.vending.hum master @a ~ ~ ~ 1 1
execute if predicate du-in:chance/quarter_chance at @e[type=interaction,tag=voidLock] run playsound du-in:sfx.void.whisper master @a ~ ~ ~ 0.5 1

schedule function du-in:ingame/scheduled/five_sec_loop 5s