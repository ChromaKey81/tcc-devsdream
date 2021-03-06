############################################################
# Makes a toast based on how many of the advancements you have
############################################################

scoreboard players set @s tcc.dummy 1
scoreboard players add @s[advancements={tcc:technical/item/quest_book/mage/display/01=true}] tcc.dummy 1
scoreboard players add @s[advancements={tcc:technical/item/quest_book/mage/display/02=true}] tcc.dummy 1
scoreboard players add @s[advancements={tcc:technical/item/quest_book/mage/display/03=true}] tcc.dummy 1

advancement grant @s[scores={tcc.dummy=1}] only tcc:technical/toast/quests/mage/1
advancement grant @s[scores={tcc.dummy=2}] only tcc:technical/toast/quests/mage/2

scoreboard players reset @s tcc.dummy
