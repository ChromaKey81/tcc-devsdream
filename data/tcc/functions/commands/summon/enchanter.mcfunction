############################################################
# Summons an enchanter
############################################################

summon wandering_trader ~ ~ ~ {CustomName:'{"translate":"entity.tcc.enchanter"}',Team:"global.antivil",DeathLootTable:"tcc:entities/enchanter",ArmorDropChances:[-10000.0f,-10000.0f,-10000.0f,-10000.0f],HandDropChances:[-10000.0f,-10000.0f],Offers:{Recipes:[]},ActiveEffects:[{Id:14b,Duration:100000,Amplifier:0b,ShowParticles:0b}],Silent:1b,Tags:["tcc.entity","tcc.enchanter","tcc.trader_entity","global.ignore"],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{tcc:{storage:{model_items:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330001}},{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330002}},{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16777215},CustomModelData:330003}}]}},CustomModelData:330004,display:{color:16777215}}}],HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:330001,display:{color:16777215}}}]}

tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.tcc.enchanter"}]}
tag @s add tcc.no_space
function tcc:entity/player/gamerule_tellraw/no_feedback_chat_message/load
