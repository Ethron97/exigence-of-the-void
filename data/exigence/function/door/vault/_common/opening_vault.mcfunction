# Iterate key/door animation

# This function is called as an interface by the specific vault opening functions

## CONSTRAINTS
#   AS/AT vault handle (item display)
#   WITH score game.door.inserting_key 1..

#====================================================================================================

execute if score toggle.vault debug matches 1 if score debug.level debug matches 4.. run say (D4) Opening vault (common)

# Remove inserting key
scoreboard players remove @s game.door.inserting_key 1

# Playsound
execute if score @s game.door.inserting_key matches 60 run playsound minecraft:block.grindstone.use ambient @a ~ ~ ~ 1 0.1

# Interpolate the key perfectly into the slot
execute if score @s game.door.inserting_key matches 60 run execute as @e[type=minecraft:item_display,tag=VaultHandleKey,distance=..1] run tp @s ^ ^ ^

# Make vault handle enchanted
#   For some reason in minecraft, the enchant glint hits everything on the same "plane". So once the other item becomes aligned, it will show enchanted too.
execute if score @s game.door.inserting_key matches 60 run data modify entity @s item.components."minecraft:enchantments" set value {protection:1}

# Play beacon sound at <20
#   WHY AM I PLAYING THE SOUND AFTERWARDS?
#execute if score @s game.door.inserting_key matches ..30 run playsound block.beacon.activate neutral @a ~ ~ ~ 1 1.1

# Time enchant particles so they "hit" the key as it opens
execute if score @s game.door.inserting_key matches 59 run particle minecraft:enchant ~ ~1 ~ 0 0 0 3 40

# Play sound when the key "clicks" in
execute if score @s game.door.inserting_key matches 30 run playsound block.decorated_pot.place block @a ~ ~ ~ 1 1.3

# Finish opening
#   Wait 5 ticks after matching so we get a chance to actually see it fit perfectly.
execute if score @s game.door.inserting_key matches 25 run function exigence:door/vault/_common/opening_vault_finish with entity @s item.components."minecraft:custom_data"
