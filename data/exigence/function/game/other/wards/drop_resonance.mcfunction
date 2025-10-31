# Drops one shard by selecting a random remaining crystal

# Do we weight based on how many Healths are remaining? Or would that just encourage hoarding crystals

#================================================================================================================

# Tag random crystal
tag @e[type=interaction,tag=Crystal,sort=random,limit=1] add DroppingResonance

execute as @e[type=interaction,tag=Crystal,tag=DroppingResonance,tag=Emerald] run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=4},sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:game/other/wards/shard/summon_emerald"}
execute as @e[type=interaction,tag=Crystal,tag=DroppingResonance,tag=Sapphire] run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=4},sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:game/other/wards/shard/summon_sapphire"}
execute as @e[type=interaction,tag=Crystal,tag=DroppingResonance,tag=Ruby] run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=4},sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:game/other/wards/shard/summon_ruby"}
execute as @e[type=interaction,tag=Crystal,tag=DroppingResonance,tag=Topaz] run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=4},sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:game/other/wards/shard/summon_topaz"}
execute as @e[type=interaction,tag=Crystal,tag=DroppingResonance,tag=Amethyst] run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=4},sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:game/other/wards/shard/summon_amethyst"}

# Remove local tag
tag @e[type=interaction,tag=Crystal,tag=DroppingResonance] remove DroppingResonance
