# Must run after player/select_active

## CONSTRAINTS
#   IN profile_data

#====================================================================================================

# Set attempted scores
execute if score game.difficulty game.state matches 1 run return run scoreboard players add @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=Active] profile.data.winloss.attempts_D1 1
execute if score game.difficulty game.state matches 2 run return run scoreboard players add @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=Active] profile.data.winloss.attempts_D2 1
execute if score game.difficulty game.state matches 3 run return run scoreboard players add @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=Active] profile.data.winloss.attempts_D3 1
execute if score game.difficulty game.state matches 4 run return run scoreboard players add @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=Active] profile.data.winloss.attempts_D4 1
execute if score game.difficulty game.state matches 5 run return run scoreboard players add @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode,tag=Active] profile.data.winloss.attempts_D5 1
