# Setup pre-revealed mirrors (based on modifiers)
#   Called from setup_all_mirros

## CONSTRAINTS
#   IN minecraft:overworld
#   IF mod.revealed_mirrors game.modifiers matches 1..

#====================================================================================================

# Reset tag
tag @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=RevealedMirror] remove RevealedMirror

## SWITCH
execute if score mod.revealed_mirrors game.modifiers matches 1 run return run execute as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=MirrorNode,tag=!RevealedMirror,sort=random,limit=1] run function exigence:mirror/mirrors/reveal_random_mirror
execute if score mod.revealed_mirrors game.modifiers matches 2 run return run execute as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=MirrorNode,tag=!RevealedMirror,sort=random,limit=2] run function exigence:mirror/mirrors/reveal_random_mirror
execute if score mod.revealed_mirrors game.modifiers matches 3 run return run execute as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=MirrorNode,tag=!RevealedMirror,sort=random,limit=3] run function exigence:mirror/mirrors/reveal_random_mirror
execute if score mod.revealed_mirrors game.modifiers matches 4.. run return run execute as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=MirrorNode,tag=!RevealedMirror,sort=random,limit=4] run function exigence:mirror/mirrors/reveal_random_mirror
