# Loads NPCs depending on what stage of progression the active player is on

# SUPPLIER
execute if score Difficulty DungeonRun matches 1 if entity @a[tag=ActivePlayer,advancements={exigence:story/rescue_supplier=false,exigence:story/win_difficulty_1=true}] run function exigence:npc/game/spawn_supplier
#execute if entity @a[tag=ActivePlayer,advancements={exigence:story/shop_unlocked=true}] run say hi

# SCIENTIST
execute if score Difficulty DungeonRun matches 2 if entity @a[tag=ActivePlayer,advancements={exigence:story/rescue_scientist=false}] run function exigence:npc/game/spawn_scientist

# PETITIONER
execute if score Difficulty DungeonRun matches 3 if entity @a[tag=ActivePlayer,advancements={exigence:story/rescue_petitioner=false}] run function exigence:npc/game/spawn_petitioner

# VOID MERCHANTS
execute if score Difficulty DungeonRun matches 3.. positioned -384.5 37.0 -118.5 run function exigence:npc/game/void_merchant/setup_vms
