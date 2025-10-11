function du-in:lobby/theme/default/undo
#clone 637 15 71 673 31 107 -1001 11 499 replace force
clone 637 32 33 673 48 69 -1001 11 499 replace force
fillbiome -1000 10 501 -966 26 534 du-in:fall

function du-in:lobby/theme/halloween/display


#KIT SELECT#
#clone 538 8 76 570 18 94 427 3 40

#MAP SELECT#
#clone 193 14 96 203 4 121 227 90 13

clone 206 25 96 216 15 121 227 90 13


team modify Red color gold
team modify Blue color dark_purple

team modify displayRedTeam color gold
team modify displayBlueTeam color dark_purple

team modify Red prefix {text:"[Ghoul] ",bold:true,color:gold}
team modify Blue prefix {text:"[Ghost] ",bold:true,color:dark_purple}

tellraw @a [{text:"Halloween ",bold:true,color:dark_purple},{text:"lobby theme selected!",color:yellow}]