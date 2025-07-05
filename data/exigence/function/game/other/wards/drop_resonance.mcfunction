# Drops one shard by selecting a random remaining crystal

# Do we weight based on how many Healths are remaining? Or would that just encourage hoarding crystals

#================================================================================================================

# Tag random crystal
tag @e[type=interaction,tag=Crystal,sort=random,limit=1] add DroppingResonance

# Cap based on how many have already dropped?
#scoreboard players set #emerald Wards 0
#scoreboard players set #sapphire Wards 0
#scoreboard players set #ruby Wards 0
#scoreboard players set #topaz Wards 0
#scoreboard players set #amethyst Wards 0

#execute as @e[type=item,tag=ResonanceEmerald] run scoreboard players add #emerald Wards 1
#execute as @e[type=item,tag=ResonanceSapphire] run scoreboard players add #sapphire Wards 1
#execute as @e[type=item,tag=ResonanceRuby] run scoreboard players add #ruby Wards 1
#execute as @e[type=item,tag=ResonanceTopaz] run scoreboard players add #topaz Wards 1
#execute as @e[type=item,tag=ResonanceAmethyst] run scoreboard players add #amethyst Wards 1

execute as @e[type=interaction,tag=Crystal,tag=DroppingResonance,tag=Emerald] run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=4},sort=random,limit=1] run function exigence:treasure/node/drop_treasure {function:"exigence:game/other/wards/shard/summon_emerald"}
execute as @e[type=interaction,tag=Crystal,tag=DroppingResonance,tag=Sapphire] run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=4},sort=random,limit=1] run function exigence:treasure/node/drop_treasure {function:"exigence:game/other/wards/shard/summon_sapphire"}
execute as @e[type=interaction,tag=Crystal,tag=DroppingResonance,tag=Ruby] run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=4},sort=random,limit=1] run function exigence:treasure/node/drop_treasure {function:"exigence:game/other/wards/shard/summon_ruby"}
execute as @e[type=interaction,tag=Crystal,tag=DroppingResonance,tag=Topaz] run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=4},sort=random,limit=1] run function exigence:treasure/node/drop_treasure {function:"exigence:game/other/wards/shard/summon_topaz"}
execute as @e[type=interaction,tag=Crystal,tag=DroppingResonance,tag=Amethyst] run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=4},sort=random,limit=1] run function exigence:treasure/node/drop_treasure {function:"exigence:game/other/wards/shard/summon_amethyst"}

# Remove local tag
tag @e[type=interaction,tag=Crystal,tag=DroppingResonance] remove DroppingResonance
