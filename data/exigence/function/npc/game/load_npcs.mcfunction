# Called by game load sequence
# Loads NPCs depending on what stage of progression the active player is on

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================
execute unless dimension minecraft:overworld run return run say Tried to load npcs not in overworld
#----------------------------------------------------------------------------------------------------

#say (D3) Load npcs

# SUPPLIER
execute if score game.difficulty game.state matches 1 if entity @a[tag=Predungeon,advancements={exigence:story/rescue_supplier=false,exigence:story/win_difficulty_1=true}] run function exigence:npc/game/spawn_supplier

# SCIENTIST
execute if score game.difficulty game.state matches 2 unless entity @a[tag=Predungeon,advancements={exigence:story/rescue_scientist=true}] run function exigence:npc/game/spawn_scientist

# PETITIONER
execute if score game.difficulty game.state matches 3 unless entity @a[tag=Predungeon,advancements={exigence:story/rescue_petitioner=true}] run function exigence:npc/game/spawn_petitioner

# VOID MERCHANTS
#execute if score game.difficulty game.state matches 3.. positioned -384.5 37.0 -118.5 run function exigence:npc/game/void_merchant/setup_vms
