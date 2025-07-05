# Called by gameon
#   Decides which berry bushes are capable of growing bushes this run

# As of balance 1.0, bushes have an 80% chance to be active.
# Active tag = capable of growing
# No active tag = incapapble of growing
# Grown tag = currently has berry bushes

#======================================================================================================

execute as @e[type=armor_stand,tag=BerryNode] run function exigence:botany/node/setup
