

# Return if game is not active
execute if data storage exigence:dungeon {is_active:0} run return 1

# Advancee dialogue
execute as @e[type=minecraft:villager,tag=NPC_Scientist,tag=Game] run function exigence:npc/game/dialogue_scientist

# Reset advancement
advancement revoke @s only exigence:listener/scientist_interact_game

#say itnereavt scientsit