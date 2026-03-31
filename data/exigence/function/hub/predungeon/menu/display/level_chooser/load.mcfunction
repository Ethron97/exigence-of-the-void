# Load second menu / level selector

## CONSTRAINTS
#   AT predungeon menu

#====================================================================================================

# Playsound
playsound minecraft:block.ender_chest.open ui @a ~ ~ ~ 1 1

# Open middle slot
execute as @n[type=item_display,tag=DoorSlotFill0,tag=Closed,distance=..5] run function exigence:hub/predungeon/menu/display/warp_door/slot/open_slot

# Summon cancel button
execute at @n[type=marker,tag=DoorSlotMarker0,distance=..5] positioned ~ ~ ~-0.01 run function exigence:hub/predungeon/menu/display/level_chooser/load/summon_cancel

# Outputs: #attempts_d#1-6 Temp
execute as @p[tag=Predungeon,distance=..16] run function exigence:player/get/attempts_d

# Call load functions to load the chooser buttons depending on the advancements of the profile
#   Once you beat a level, the next one shows up as unknown, so you have a goal to shoot for.
execute if entity @p[tag=Predungeon,distance=..16,advancements={exigence:story/root=true}] \
run function exigence:hub/predungeon/menu/display/level_chooser/load/load_chooser_1

execute if entity @p[tag=Predungeon,distance=..16,advancements={exigence:story/win_difficulty_1=true}] \
run function exigence:hub/predungeon/menu/display/level_chooser/load/load_chooser_2

execute if entity @p[tag=Predungeon,distance=..16,advancements={exigence:story/win_difficulty_2=true}] \
run function exigence:hub/predungeon/menu/display/level_chooser/load/load_chooser_3

execute if entity @p[tag=Predungeon,distance=..16,advancements={exigence:story/win_difficulty_3=true}] \
run function exigence:hub/predungeon/menu/display/level_chooser/load/load_chooser_4

execute if entity @p[tag=Predungeon,distance=..16,advancements={exigence:story/win_difficulty_4=true}] \
run function exigence:hub/predungeon/menu/display/level_chooser/load/load_chooser_5

# Summon main title
#execute positioned ~ ~1.5 ~ run function exigence:hub/predungeon/menu/display/level_chooser/summon_title
#execute as @n[distance=..5,type=text_display,tag=LevelChooserTitle] at @s run tp @s ~ ~2 ~

# Summon detail displays etc
# TODO