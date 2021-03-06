############################################################
# Moves the boomerang one block
############################################################

execute if entity @s[scores={tcc.dummy2=50..},tag=!tcc.boomerang.bounce,tag=!tcc.boomerang.dead] at @s unless block ^ ^ ^0.05 #tcc:boomerang_ignore positioned ^ ^ ^-0.5 run function tcc:item/boomerang/break
execute if entity @s[scores={tcc.dummy2=..49}] unless block ^ ^ ^0.05 #tcc:boomerang_ignore positioned ^ ^ ^-0.5 run function tcc:item/boomerang/bounce
execute if entity @s[scores={tcc.dummy2=..49}] positioned ^ ^ ^0.05 if entity @e[type=shulker,nbt={Peek:0b},dx=0,dz=0,dy=0,tag=!global.ignore] run function tcc:item/boomerang/bounce
execute if block ^ ^ ^0.05 #tcc:boomerang_ignore unless entity @e[type=shulker,nbt={Peek:0b},dx=0,dz=0,dy=0,tag=!global.ignore] run tp @s ^ ^ ^0.05
scoreboard players add @s tcc.dummy 1
execute if entity @s[scores={tcc.dummy=0..19}] at @s run function tcc:item/boomerang/iterate
execute if entity @s[scores={tcc.dummy2=3..}] if entity @a[distance=..2,gamemode=!spectator] run function tcc:item/boomerang/pickup_attempt
execute if entity @s[scores={tcc.dummy2=1..}] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#tcc:boomerang_ignore,dx=0,dz=0,dy=0,distance=..5,predicate=tcc:entity/global.ignore,predicate=tcc:item/boomerang_damage_valid] run function tcc:item/boomerang/hurt/entity_damage
