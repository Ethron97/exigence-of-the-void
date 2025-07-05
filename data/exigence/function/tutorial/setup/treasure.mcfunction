# Coins
execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=10},tag=!EmberSpecial] run function exigence:treasure/node/drop_treasure {function:"exigence:treasure/node/coin/summon_coin"}
execute as @e[type=minecraft:item,scores={ObjectLevel=10}] run tag @s add PreventItemDespawn

