# Call as player to load from

## ====================== ARTIFACTS ======================
## COMMON

# Leather Shield
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'leather_shield'}}}]}] run effect give @s absorption infinite 1 true

# Piggy Bank (UNAVAILABLE)
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'piggy_bank'}}}]}] run scoreboard players add @s game.player.mod.coin_keep 2

# Prize Eye
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'prize_eye'}}}]}] run scoreboard players add BonusCards Modifiers 1

# Charm of Peril
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'charm_of_peril'}}}]}] run function exigence:vault/artifact/artifacts/charm_of_peril/trigger

# Water Crystal (UNAVAILABLE)
#   We give score so that if they die and come back they keep effect
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'water_crystal'}}}]}] run scoreboard players set @s game.player.mod.water_crystal 1
execute if entity @s[scores={game.player.mod.water_crystal=1}] run effect give @s dolphins_grace infinite 0 true

# Treasure Lantern
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'treasure_lantern'}}}]}] run scoreboard players set @s game.player.mod.treasure_lantern 1

# Ashes
#   As far as I *know*, this only impacts walking on soulsand. Not powder snow, not ice.
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'ashes'}}}]}] run attribute @s minecraft:movement_efficiency modifier add exigence:ashes 1.0 add_value



## UNCOMMON
# Enchanted book
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'enchanted_book'}}}]}] run scoreboard players set @s game.player.mod.enchanted_book 1
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'enchanted_book'}}}]}] run function exigence:deck/spellbind/try

# Evergrow (UNAVAILABLE)
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'evergrowth'}}}]}] run scoreboard players set Evergrowth Modifiers 1

# Heavy Core
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'heavy_core'}}}]}] run attribute @s minecraft:knockback_resistance modifier add exigence:heavy_core 1.0 add_value 

# Dragon Breath
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'dragon_breath'}}}]}] run scoreboard players set @s game.player.mod.dragon_breath 1
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'dragon_breath'}}}]}] run scoreboard players add MaxDragonBreath DungeonRun 5

execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'enchanted_book'}}}]}] run scoreboard players set @s game.player.mod.enchanted_book 1



## RARE
# Ember Lantern
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'ember_lantern'}}}]}] run scoreboard players set @s game.player.mod.ember_lantern 1

# Magnet
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'magnet'}}}]}] run scoreboard players set @s game.player.mod.magnet 1

# Glistering Melon
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'glistering_melon'}}}]}] run function exigence:player/attributes/health_boost/increase_health {boost:10}
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'glistering_melon'}}}]}] run effect give @s minecraft:instant_health 1 10 true

# Void Crystal
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'void_crystal'}}}]}] run scoreboard players set @s game.player.mod.void_crystal 1



# LEGENDARY
# Gold Idol (UNAVAILABLE)
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'gold_idol'}}}]}] run scoreboard players set GoldIdol Modifiers 1

# Lucky Ravager Hoof
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'ravager_hoof'}}}]}] run scoreboard players set @s game.player.mod.ravager_hoof 1

# Lucky Feather
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'lucky_feather'}}}]}] run scoreboard players set LuckyFeather Modifiers 1

# Heighten
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'heighten'}}}]}] run scoreboard players set @s game.player.mod.war_paint 1

# Void Bundle
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'void_bundle'}}}]}] run scoreboard players set @s game.player.mod.void_bundle 1

# Catalyst
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'catalyst'}}}]}] run scoreboard players set @s game.player.mod.catalyst 1

# Brush (UNAVAILABLE)
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'brush'}}}]}] run scoreboard players set Brush Modifiers 1

# Gathering Storm
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{item_name:'gathering_storm'}}}]}] run scoreboard players set @s game.player.mod.gathering_storm 1



## ARMOR
execute if items entity @s armor.feet * run function exigence:game/modifiers/private/b_boots
execute if items entity @s armor.legs * run function exigence:game/modifiers/private/b_pants
execute if items entity @s armor.chest * run function exigence:game/modifiers/private/b_chestplate
execute if items entity @s armor.head * run function exigence:game/modifiers/private/b_helmet
