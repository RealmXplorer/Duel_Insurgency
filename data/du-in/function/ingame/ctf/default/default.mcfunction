#CLOSE TO END#
execute if entity @a[tag=!ctfClose] if score #main bluePoints >= #main ctfClose run function du-in:ingame/ctf/default/close
execute if entity @a[tag=!ctfClose] if score #main redPoints >= #main ctfClose run function du-in:ingame/ctf/default/close

#END#
execute if entity @a[tag=!ctfEnd] if score #main bluePoints >= #main ctfMax run function du-in:ingame/ctf/default/win
execute if entity @a[tag=!ctfEnd] if score #main redPoints >= #main ctfMax run function du-in:ingame/ctf/default/win