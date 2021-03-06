############################################################
# Smashes blocks with particles
############################################################

execute if block ~ ~-0.9 ~ #tcc:anvil_smash_glass run function tcc:block/anvil_smashing/smash_glass
execute if block ~ ~-0.9 ~ #tcc:amethyst_blocks run function tcc:block/anvil_smashing/smash_amethyst
execute if block ~ ~-0.9 ~ minecraft:stone_bricks align y run particle minecraft:item minecraft:stone_bricks ~ ~-0.6 ~ 0.5 0.5 0.5 0.1 50 normal
execute if block ~ ~-0.9 ~ minecraft:polished_blackstone_bricks align y run particle minecraft:item minecraft:polished_blackstone_bricks ~ ~-0.6 ~ 0.5 0.5 0.5 0.1 50 normal
execute if block ~ ~-0.9 ~ minecraft:nether_bricks align y run particle minecraft:item minecraft:nether_bricks ~ ~-0.6 ~ 0.5 0.5 0.5 0.1 50 normal
execute if block ~ ~-0.9 ~ minecraft:infested_stone_bricks align y run particle minecraft:item minecraft:infested_stone_bricks ~ ~-0.6 ~ 0.5 0.5 0.5 0.1 50 normal
execute if block ~ ~-0.9 ~ minecraft:deepslate_bricks align y run particle minecraft:item minecraft:deepslate_bricks ~ ~-0.6 ~ 0.5 0.5 0.5 0.1 50 normal
execute if block ~ ~-0.9 ~ minecraft:deepslate_tiles align y run particle minecraft:item minecraft:deepslate_tiles ~ ~-0.6 ~ 0.5 0.5 0.5 0.1 50 normal

execute unless block ~ ~-0.9 ~ #tcc:anvil_smash_glass unless block ~ ~-0.9 ~ #tcc:amethyst_blocks run playsound minecraft:block.stone.break block @a[distance=..16]

execute if block ~ ~-0.9 ~ minecraft:stone_bricks run setblock ~ ~-0.9 ~ minecraft:cracked_stone_bricks replace
execute if block ~ ~-0.9 ~ minecraft:polished_blackstone_bricks run setblock ~ ~-0.9 ~ minecraft:cracked_polished_blackstone_bricks replace
execute if block ~ ~-0.9 ~ minecraft:nether_bricks run setblock ~ ~-0.9 ~ minecraft:cracked_nether_bricks replace
execute if block ~ ~-0.9 ~ minecraft:infested_stone_bricks run setblock ~ ~-0.9 ~ minecraft:infested_cracked_stone_bricks replace
execute if block ~ ~-0.9 ~ minecraft:deepslate_bricks run setblock ~ ~-0.9 ~ minecraft:cracked_deepslate_bricks replace
execute if block ~ ~-0.9 ~ minecraft:deepslate_tiles run setblock ~ ~-0.9 ~ minecraft:cracked_deepslate_tiles replace
