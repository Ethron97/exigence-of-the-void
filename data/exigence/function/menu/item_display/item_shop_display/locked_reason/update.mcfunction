# Called by hover and load_advancements_a

## CONSTRAINTS
#   AS item_display

#=============================================================================================================

# DEBUG
#say update locked reason

# UPDATE LOCKED REASON
# Reset
data modify entity @s item.components."minecraft:custom_data".locked_reason set value {text:""}

# Update text reason based on tags
#execute if entity @s[tag=!CanBuy,tag=IsResearched] run data modify entity @s item.components."minecraft:custom_data".locked_reason set value {text:"Not enough 💎!",color: "red"}
#execute if entity @s[tag=!CanResearch,tag=!IsResearched] run data modify entity @s item.components."minecraft:custom_data".locked_reason set value {text:"Not enough 🕮!",color: "red"}

# Artifact: If matching vault is not researched
execute as @s[tag=!IsResearched,tag=Artifact,tag=!Trial,tag=!Crucible] run data modify entity @s item.components."minecraft:custom_data".locked_reason set value {text:"Open Vault       to unlock",color: "red"}
execute as @s[tag=!IsResearched,tag=Artifact,tag=Trial] run data modify entity @s item.components."minecraft:custom_data".locked_reason set value {text:"Complete      Trial to unlock",color: "red"}
execute as @s[tag=!IsResearched,tag=Artifact,tag=Crucible] run data modify entity @s item.components."minecraft:custom_data".locked_reason set value {text:"Complete      Crucible to unlock",color: "red"}


# If tier locked or no children researched, gray
execute as @s[tag=!IsParentResearched] run data modify entity @s item.components."minecraft:custom_data".locked_reason set value {text:"Previous item required!",color: "red"}
execute as @s[tag=!IsTierUnlocked,scores={ItemShopTier=1}] run data modify entity @s item.components."minecraft:custom_data".locked_reason set value {text:"Tier locked: Return from Level 1!",color: "red"}
execute as @s[tag=!IsTierUnlocked,scores={ItemShopTier=2}] run data modify entity @s item.components."minecraft:custom_data".locked_reason set value {text:"Tier locked: Rescue Suplier!",color: "red"}
execute as @s[tag=!IsTierUnlocked,scores={ItemShopTier=3}] run data modify entity @s item.components."minecraft:custom_data".locked_reason set value {text:"Tier locked: Return from Level 2!",color: "red"}
execute as @s[tag=!IsTierUnlocked,scores={ItemShopTier=4}] run data modify entity @s item.components."minecraft:custom_data".locked_reason set value {text:"Tier locked: Rescue Scientist!",color: "red"}
execute as @s[tag=!IsTierUnlocked,scores={ItemShopTier=5}] run data modify entity @s item.components."minecraft:custom_data".locked_reason set value {text:"Tier locked: Return from Level 3!",color: "red"}
execute as @s[tag=!IsTierUnlocked,scores={ItemShopTier=6}] run data modify entity @s item.components."minecraft:custom_data".locked_reason set value {text:"Tier locked: Rescue Petitioner!",color: "red"}
execute as @s[tag=!IsTierUnlocked,scores={ItemShopTier=7}] run data modify entity @s item.components."minecraft:custom_data".locked_reason set value {text:"Tier locked: Return from Level 4!",color: "red"}
execute as @s[tag=!IsTierUnlocked,scores={ItemShopTier=8}] run data modify entity @s item.components."minecraft:custom_data".locked_reason set value {text:"Tier locked: Return from Level 4!",color: "red"}


execute as @s[tag=IsOneTimePurchased] run data modify entity @s item.components."minecraft:custom_data".locked_reason set value {text:"Upgrade already purchased",color: "green"}
