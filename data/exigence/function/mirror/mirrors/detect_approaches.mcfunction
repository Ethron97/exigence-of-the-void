# Handle sub calls

#====================================================================================================

#execute positioned -428.5 65.0 -134.5 at @e[type=minecraft:armor_stand,tag=MirrorNode,tag=45d,distance=..1] as @p[scores={dead=0},tag=ActivePlayer,distance=..30] run function exigence:mirror/mirrors/45_degree/detect_approach
#execute positioned -412.5 80.0 -169.5 at @e[type=minecraft:armor_stand,tag=MirrorNode,tag=4wide,distance=..1] as @p[scores={dead=0},tag=ActivePlayer,distance=..30] run function exigence:mirror/mirrors/four_wide_one_path/detect_approach
#execute positioned -428.5 61.0 -213.5 at @e[type=minecraft:armor_stand,tag=MirrorNode,tag=3way,distance=..1] as @p[scores={dead=0},tag=ActivePlayer,distance=..30] run function exigence:mirror/mirrors/intersection/detect_approach
#execute positioned -420.5 46.0 -219.5 at @e[type=minecraft:armor_stand,tag=MirrorNode,tag=3wide,distance=..1] as @p[scores={dead=0},tag=ActivePlayer,distance=..30] run function exigence:mirror/mirrors/three_wide_one_path/detect_approach

#execute positioned -428.5 65.0 -134.5 as @a[scores={dead=0},tag=ActivePlayer,distance=..30,sort=nearest] run function exigence:mirror/mirrors/45_degree/detect_approach
#execute positioned -412.5 80.0 -169.5 as @a[scores={dead=0},tag=ActivePlayer,distance=..30,sort=nearest] run function exigence:mirror/mirrors/four_wide_one_path/detect_approach
#execute positioned -428.5 61.0 -213.5 as @a[scores={dead=0},tag=ActivePlayer,distance=..30,sort=nearest] run function exigence:mirror/mirrors/intersection/detect_approach
#execute positioned -420.5 46.0 -219.5 as @a[scores={dead=0},tag=ActivePlayer,distance=..30,sort=nearest] run function exigence:mirror/mirrors/three_wide_one_path/detect_approach

# Prioritize "deepest" side, so if there are players on each end, it will go to the harder side to get to
execute positioned -413.5 46.0 -223.5 as @a[scores={dead=0},tag=ActivePlayer,distance=..8] run function exigence:mirror/mirrors/three_wide_one_path/detect_approach
execute positioned -419.5 47.0 -211.5 as @a[scores={dead=0},tag=ActivePlayer,distance=..8] run function exigence:mirror/mirrors/three_wide_one_path/detect_approach

execute positioned -428.5 60.0 -203.5 as @a[scores={dead=0},tag=ActivePlayer,distance=..8] run function exigence:mirror/mirrors/intersection/detect_approach
execute positioned -440.5 61.0 -207.5 as @a[scores={dead=0},tag=ActivePlayer,distance=..8] run function exigence:mirror/mirrors/intersection/detect_approach
execute positioned -437.5 62.0 -219.5 as @a[scores={dead=0},tag=ActivePlayer,distance=..8] run function exigence:mirror/mirrors/intersection/detect_approach

execute positioned -430.5 64.0 -144.5 as @a[scores={dead=0},tag=ActivePlayer,distance=..8] run function exigence:mirror/mirrors/45_degree/detect_approach
execute positioned -418.5 66.0 -132.5 as @a[scores={dead=0},tag=ActivePlayer,distance=..8] run function exigence:mirror/mirrors/45_degree/detect_approach

execute positioned -423.5 78.0 -170.5 as @a[scores={dead=0},tag=ActivePlayer,distance=..8] run function exigence:mirror/mirrors/four_wide_one_path/detect_approach
execute positioned -407.5 81.0 -178.5 as @a[scores={dead=0},tag=ActivePlayer,distance=..8] run function exigence:mirror/mirrors/four_wide_one_path/detect_approach