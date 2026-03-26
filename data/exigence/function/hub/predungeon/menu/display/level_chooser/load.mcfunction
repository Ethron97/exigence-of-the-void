# Load second menu / level selector

## CONSTRAINTS
#   AT predungeon menu

#====================================================================================================

# Playsound
playsound minecraft:block.ender_chest.open ui @a ~ ~ ~ 1 1

# Update state
scoreboard players set #predungeon_state Temp 1

# Open middel slot
execute as @n[distance=..5,type=item_display,tag=DoorSlotFill0,tag=Closed] run function exigence:hub/predungeon/menu/display/warp_door/slot/open_slot

# Summon cancel button
execute at @n[distance=..5,type=marker,tag=DoorSlotMarker0] positioned ~ ~ ~-0.01 run function exigence:hub/predungeon/menu/display/level_chooser/load/summon_cancel

# Call load functions to load the chooser buttons depending on the advancements of the profile
execute if entity @p[distance=..16,tag=Predungeon,advancements={exigence:story/root=true}] \
run function exigence:hub/predungeon/menu/display/level_chooser/load/load_chooser_1

execute if entity @p[distance=..16,tag=Predungeon,advancements={exigence:story/win_difficulty_1=true}] \
run function exigence:hub/predungeon/menu/display/level_chooser/load/load_chooser_2

execute if entity @p[distance=..16,tag=Predungeon,advancements={exigence:story/win_difficulty_2=true}] \
run function exigence:hub/predungeon/menu/display/level_chooser/load/load_chooser_3

execute if entity @p[distance=..16,tag=Predungeon,advancements={exigence:story/win_difficulty_3=true}] \
run function exigence:hub/predungeon/menu/display/level_chooser/load/load_chooser_4

execute if entity @p[distance=..16,tag=Predungeon,advancements={exigence:story/win_difficulty_4=true}] \
run function exigence:hub/predungeon/menu/display/level_chooser/load/load_chooser_5

# Summon main title
#execute positioned ~ ~1.5 ~ run function exigence:hub/predungeon/menu/display/level_chooser/summon_title
#execute as @n[distance=..5,type=text_display,tag=LevelChooserTitle] at @s run tp @s ~ ~2 ~

# Summon detail displays etc
# TODO