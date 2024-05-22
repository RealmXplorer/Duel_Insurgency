advancement grant @a[tag=win,tag=!falseWin,tag=!spectating,tag=!voidLose,tag=!tie] only du-in:gamemode/ctfwin

tag @a remove ctfl

bossbar set du-in:bluectf value 0
bossbar set du-in:redctf value 0
bossbar set du-in:bluectf visible false
bossbar set du-in:redctf visible false

tag @a remove ownFlag
tag @a remove otherFlag

scoreboard players reset #main blueFlagTimer
scoreboard players reset #main redFlagTimer

tag @a remove ctfIngame

tag @a remove ctfClose
tag @a remove ctfEnd

tag @a remove flagGot
tag @a remove glowing
scoreboard players reset * flagGot
