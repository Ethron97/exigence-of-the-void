
# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

# If player(s) does not have "talk to petitioner" give that first
#advancement grant @a[tag=ActivePlayer,advancements={exigence:story/talk_to_petitioner=false}] only exigence:story/talk_to_petitioner
# We only need to call the function once as any active player.
execute as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'talk_to_petitioner'}

# Trigger dialoge
execute at @s as @e[type=minecraft:villager,tag=NPC_Petitioner,tag=Game,distance=..16,limit=1] run function exigence:npc/game/dialogue_petitioner

# Revoke the advanancement so they can get it again
advancement revoke @s only exigence:listener/interact/npc_petitioner_game

#say Petitioner interact
