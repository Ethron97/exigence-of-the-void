
# Return if game is not active
execute unless entity @s[tag=ActivePlayer] unless data storage exigence:dungeon {is_active:1} run return 1

# Advancee dialogue
execute at @s as @n[distance=..32,type=minecraft:villager,tag=NPC_Scientist,tag=Game] run function exigence:npc/game/dialogue_scientist

# Reset advancement
advancement revoke @s only exigence:listener/scientist_interact_game

#say itnereavt scientsit