function du-in:lobby/display/default/undo
#clone 637 15 145 673 31 181 -1001 11 499 replace force
clone 637 66 33 673 82 69 -1001 11 499 replace force
fillbiome -1000 10 501 -966 26 534 minecraft:snowy_taiga

function du-in:lobby/display/christmas/display

#KIT SELECT#
#clone 538 8 98 570 18 116 427 3 40

#MAP SELECT#
#clone 167 14 96 177 4 121 227 90 13
clone 206 47 96 216 37 121 227 90 13

team modify Red color red
team modify Blue color dark_green

team modify displayRedTeam color red
team modify displayBlueTeam color dark_green

team modify Red prefix {text:"[Saint] ",bold:true,color:red}
team modify Blue prefix {text:"[Elf] ",bold:true,color:dark_green}

tellraw @a [{text:"Christmas ",bold:true,color:red},{text:"lobby theme selected!",color:yellow}]