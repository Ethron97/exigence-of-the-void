# Called by game_tick

# ===============================================================================================================

# Call bell tick as active bells
execute as @e[type=minecraft:armor_stand,scores={game.node.bell.ring_cooldown=1..},tag=BellNode,tag=Active] run function exigence:bell/node/tick
