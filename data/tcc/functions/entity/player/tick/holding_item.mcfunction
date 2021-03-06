############################################################
# Commands to run if the player is holding an item in either of their hands.
############################################################

## Carrot on stick commands
execute if entity @s[scores={tcc.carrotstick=1..}] run function tcc:item/carrot_on_a_stick

## Mending Items
execute if entity @s[predicate=tcc:entity/holding/mending_item] run function tcc:item/item_modification/durability/mend_items/xp_orb_test

## Obsidian Scythes
execute if entity @s[predicate=tcc:entity/holding/obsidian_scythe] run function tcc:item/obsidian_scythe/tick

## Photometer
execute if entity @s[predicate=tcc:entity/holding/photometer] run function tcc:item/photometer

## Totem of Undying and void bugfix
effect give @s[predicate=tcc:item/totem_void_heal] instant_health 1 0

## Ender Pearl Gemstones
execute if entity @s[predicate=tcc:entity/holding/ender_pearl_ring/any] run function tcc:item/ender_pearl_gemstone

## Amethyst Gemstones
execute if entity @s[predicate=tcc:entity/holding/amethyst_ring/any,scores={tcc.drop=1..}] run function tcc:item/amethyst_ring/find_item
