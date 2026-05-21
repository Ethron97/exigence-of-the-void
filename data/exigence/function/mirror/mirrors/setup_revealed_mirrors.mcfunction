# Setup pre-revealed mirrors (based on modifiers)
#   Called from setup_all_mirros

## CONSTRAINTS
#   IN minecraft:overworld
#   IF mod.revealed_mirrors game.modifiers matches 1..

#====================================================================================================

execute if score toggle.mirror debug matches 1 if score debug.level debug matches 3.. run say (D3 Mirror) Setup pre-revealed mirrors

# Reset tag
tag @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=RevealedMirror] remove RevealedMirror

execute if score mod.revealed_mirrors game.modifiers matches 1.. run execute as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=MirrorNode,tag=PassageMirror,tag=!RevealedMirror,sort=random,limit=1] run function exigence:mirror/mirrors/reveal_random_mirror
execute if score mod.revealed_mirrors game.modifiers matches 2.. run execute as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=MirrorNode,tag=PassageMirror,tag=!RevealedMirror,sort=random,limit=1] run function exigence:mirror/mirrors/reveal_random_mirror
execute if score mod.revealed_mirrors game.modifiers matches 3.. run execute as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=MirrorNode,tag=PassageMirror,tag=!RevealedMirror,sort=random,limit=1] run function exigence:mirror/mirrors/reveal_random_mirror
execute if score mod.revealed_mirrors game.modifiers matches 4.. run execute as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=MirrorNode,tag=PassageMirror,tag=!RevealedMirror,sort=random,limit=1] run function exigence:mirror/mirrors/reveal_random_mirror
