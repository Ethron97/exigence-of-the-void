# Handle sub calls

#===============================================================================================================

execute at @e[type=minecraft:armor_stand,tag=MirrorNode,tag=45d] as @a[tag=ActivePlayer,scores={dead=0},limit=1,sort=nearest] run function exigence:mirror/mirrors/45_degree/detect_approach
execute at @e[type=minecraft:armor_stand,tag=MirrorNode,tag=4wide] as @a[tag=ActivePlayer,scores={dead=0},limit=1,sort=nearest] run function exigence:mirror/mirrors/four_wide_one_path/detect_approach
execute at @e[type=minecraft:armor_stand,tag=MirrorNode,tag=3way] as @a[tag=ActivePlayer,scores={dead=0},limit=1,sort=nearest] run function exigence:mirror/mirrors/intersection/detect_approach
execute at @e[type=minecraft:armor_stand,tag=MirrorNode,tag=3wide] as @a[tag=ActivePlayer,scores={dead=0},limit=1,sort=nearest] run function exigence:mirror/mirrors/three_wide_one_path/detect_approach
