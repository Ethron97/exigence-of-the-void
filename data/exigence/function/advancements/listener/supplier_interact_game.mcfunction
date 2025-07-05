
# Return if the game is not active
execute if data storage exigence:dungeon {is_active:0} run return 1

# Advance dialogue
execute as @e[type=minecraft:villager,tag=NPC_Supplier,tag=Game] run function exigence:npc/game/dialogue_supplier

# Reset advancement
advancement revoke @s only exigence:listener/supplier_interact_game


#say supplier interact
