############################################################
# Trigger for gobblerifts
############################################################

execute as @e[nbt={HurtTime:10s},tag=tcc.gobblerift,distance=..7] at @s run function tcc:block/gobblerift/hurt/increment
advancement revoke @s only tcc:technical/block/gobblerift/hurt