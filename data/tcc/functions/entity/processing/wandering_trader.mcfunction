############################################################
# Adds a peculiar berries and village/pillage trade to wandering traders
############################################################

data modify entity @s Offers.Recipes prepend value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:filled_map",Count:1b,tag:{temp:1b}},maxUses:1,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:dirt",Count:1b},maxUses:3,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0}
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:dirt",Count:1b},maxUses:1,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0}

# Trade
loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/trade_1
data modify entity @s Offers.Recipes[-1].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[1]

loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/trade_2
data modify entity @s Offers.Recipes[0].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[0].sell set from entity @s HandItems[1]

loot replace entity @s weapon.mainhand 2 loot tcc:trades/wandering_trader/trade_3
data modify entity @s Offers.Recipes[-2].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[-2].sell set from entity @s HandItems[1]

item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air
