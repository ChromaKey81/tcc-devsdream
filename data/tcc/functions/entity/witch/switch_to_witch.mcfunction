############################################################
# Turns the wandering trader back into a witch, and keeps the witch data
############################################################

summon witch ~ ~ ~ {Tags:["tcc.witch_trader"],ArmorItems:[{},{id:"minecraft:structure_block",Count:1b,tag:{CustomModelData:330000,trader_data:{}}},{},{}],ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f]}
tp @e[type=witch,tag=tcc.witch_trader,sort=nearest,limit=1] @s
data remove entity @s ArmorItems[1].tag.witch_data.Pos
data remove entity @s ArmorItems[1].tag.witch_data.Motion
data remove entity @s ArmorItems[1].tag.witch_data.Rotation
data remove entity @s ArmorItems[1].tag.witch_data.HurtTime
data remove entity @s ArmorItems[1].tag.witch_data.ArmorItems
data remove entity @s ArmorItems[1].tag.witch_data.ArmorDropChances
execute unless data entity @s {CustomName:'{"translate":"entity.minecraft.witch"}'} run data modify entity @s ArmorItems[1].tag.witch_data.CustomName set from entity @s CustomName
execute if data entity @s {PersistenceRequired:1b} run data modify entity @s ArmorItems[1].tag.witch_data.PersistenceRequired set value 1b
data modify entity @e[type=witch,tag=tcc.witch_trader,sort=nearest,limit=1] ArmorItems[1].tag.trader_data set from entity @s
execute unless data entity @s {HurtTime:0s} run effect give @e[type=witch,tag=tcc.witch_trader,sort=nearest,limit=1] instant_damage 1 31 true
data modify entity @e[type=witch,tag=tcc.witch_trader,sort=nearest,limit=1] {} merge from entity @s ArmorItems[1].tag.witch_data
particle minecraft:witch ~ ~2.5 ~ 0.1 0.5 0.1 0 100 force
tp ~ -1000 ~
