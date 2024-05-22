scoreboard players remove @a[scores={titleTimer=-1..}] titleTimer 1
scoreboard players reset @a[scores={titleTimer=..0}] titleTimer

#RC
execute if score #main titleTimer2 matches 61..80 run function du-in:ingame/startround/title/three

#RC
execute if score #main titleTimer2 matches 41..60 run function du-in:ingame/startround/title/two

#RO
#scoreboard players set @a titleTimer 5

#Run continuosly
execute if score #main titleTimer2 matches 21..40 run function du-in:ingame/startround/title/one

#Run continuosly
execute if score #main titleTimer2 matches ..20 run function du-in:ingame/startround/title/go


#Run once
