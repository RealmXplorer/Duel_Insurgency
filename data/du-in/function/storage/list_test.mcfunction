#Create List
data merge storage test:list {kit_list:["clairen","willo","pawbert","gumball"]}

#Get number of entries
execute store result score @s listLength run data get storage test:list kit_list

#Add entry
data modify storage test:list kit_list append value "cuphead"

#Insert entry (Lists start at 0)
data modify storage test:list kit_list insert 3 value "creeper"

