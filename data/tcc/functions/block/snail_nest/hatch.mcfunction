############################################################
# Commands to hatch a snail nest
############################################################

setblock ~ ~ ~ air destroy
loot spawn ~ ~ ~ loot tcc:blocks/snail_nest_hatch
function tcc:entity/snail/summon/spawn
execute if predicate tcc:chance/one_half run function tcc:entity/snail/summon/spawn
particle minecraft:item structure_block{CustomModelData:330003} ~ ~ ~ 0.2 0.2 0.2 0.05 20 normal
kill @s
