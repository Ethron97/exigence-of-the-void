# Teleport reflection to the reflected position

## CONSTRAINTS
#   AS Reflection
#   AT mirror node

#====================================================================================================

$execute rotated $(rotation) ~ run tp @s ^ ^$(height) ^$(distance)

# Mirror particles
#   at @s needed because they just releported
execute at @s run particle minecraft:smoke ~ ~0.6 ~ 0.1 0.2 0.1 0 5
#execute at @e[type=minecraft:armor_stand,tag=Reflection,tag=Active] run particle minecraft:effect ~ ~ ~ 0 0 0 0.01 2

# Update equipment
execute unless entity @s[x=-482,y=61,z=-192,dx=9,dy=5,dz=5,tag=VillagerReflection] run function exigence:mirror/reflection/private/match_equipment

# Update pose
function exigence:mirror/reflection/private/update_reflection_pose

# Glow block underneath
execute at @s positioned ~ ~-1 ~ as @e[type=minecraft:marker,tag=HiddenBlock,tag=ReflectionYES,tag=!Revealed,tag=!Appeared,distance=..1] at @s run function exigence:mirror/hidden_blocks/reveal_block
