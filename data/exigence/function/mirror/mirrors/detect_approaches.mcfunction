# Handle sub calls

#====================================================================================================

execute positioned -428.5 65.0 -134.5 at @e[type=minecraft:armor_stand,tag=MirrorNode,tag=45d,distance=..1] as @p[scores={dead=0},tag=ActivePlayer,distance=..30] run function exigence:mirror/mirrors/45_degree/detect_approach
execute positioned -412.5 80.0 -169.5 at @e[type=minecraft:armor_stand,tag=MirrorNode,tag=4wide,distance=..1] as @p[scores={dead=0},tag=ActivePlayer,distance=..30] run function exigence:mirror/mirrors/four_wide_one_path/detect_approach
execute positioned -428.5 61.0 -213.5 at @e[type=minecraft:armor_stand,tag=MirrorNode,tag=3way,distance=..1] as @p[scores={dead=0},tag=ActivePlayer,distance=..30] run function exigence:mirror/mirrors/intersection/detect_approach
execute positioned -420.5 46.0 -219.5 at @e[type=minecraft:armor_stand,tag=MirrorNode,tag=3wide,distance=..1] as @p[scores={dead=0},tag=ActivePlayer,distance=..30] run function exigence:mirror/mirrors/three_wide_one_path/detect_approach
