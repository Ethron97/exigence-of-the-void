
# If player(s) does not have "talk to petitioner" give that first
advancement grant @a[tag=ActivePlayer,advancements={exigence:story/talk_to_petitioner=false}] only exigence:story/talk_to_petitioner

# Trigger dialoge
execute as @e[type=minecraft:villager,tag=NPC_Petitioner,tag=Game] run function exigence:npc/game/dialogue_petitioner

# Revoke the advanancement so they can get it again
advancement revoke @s only exigence:listener/interact/npc_petitioner_game

#say Petitioner interact
