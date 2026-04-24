# Called by end of variance setup loop

#====================================================================================================

say (D3) Setup river check

# Verify RiverCheck nodes on L1 (at least one RiverCheck needs to have water so the player can bypass a potential lock-out)
execute unless entity @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={game.node.node_state=1..2},tag=VarianceNode,tag=RiverCheck] as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,tag=VarianceNode,tag=RiverCheck,sort=random,limit=1] run function exigence:variance/private/river_check_override

# Call level 3 stairs variance (if difficulty 3+)
execute if score game.difficulty game.state matches 3.. run function exigence:variance/level_3_stairs/setup_stairs
