#forceload add -1002 537 -963 499
function du-in:lobby/theme/default/undo
function du-in:lobby/theme/default/display
tellraw @a [{text:"Default ",bold:true,color:green},{text:"lobby theme selected!",color:yellow}]
#forceload remove -1002 537 -963 499
