# Called by game_tick

# ===============================================================================================================

# Call bell tick as active bells
execute as @e[type=minecraft:armor_stand,tag=BellNode,tag=Active,scores={game.node.bell.ring_cooldown=1..}] run function exigence:bell/node/tick
