############################################################
# Commands to break a nether reactor core
############################################################

execute store success score tcc.temp_0 tcc.dummy run kill @e[tag=!global.ignore,tag=!global.ignore.kill,limit=1,type=item,distance=..2,nbt={PickupDelay:10s,Item:{id:"minecraft:obsidian"}}]
execute if score tcc.temp_0 tcc.dummy matches 1.. run loot spawn ~ ~ ~ loot tcc:items/nether_reactor_core
execute if entity @s[tag=!tcc.nether_reactor_core.on] run particle minecraft:item dropper{CustomModelData:330030} ~ ~ ~ 0.2 0.2 0.2 0.05 20 normal
execute if entity @s[tag=tcc.nether_reactor_core.on] run particle minecraft:item dropper{CustomModelData:330031} ~ ~ ~ 0.2 0.2 0.2 0.05 20 normal
kill @s
