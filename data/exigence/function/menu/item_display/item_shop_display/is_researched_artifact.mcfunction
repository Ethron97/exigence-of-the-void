# Called when shop is loaded and when player researches something

## CONSTRAINTS
#   AS item_display to check

## INPUT
#   WITH item_display item.components."minecraft:custom_data"

#=============================================================================================================

tag @s remove IsResearched

$execute if entity @s[tag=Artifact,tag=!Trial,tag=!Crucible] if entity @a[tag=ItemShopping,advancements={exigence:vault/opened_$(vault)=true}] run tag @s add IsResearched
$execute if entity @s[tag=Artifact,tag=Trial] if entity @a[tag=ItemShopping,advancements={exigence:vault/trial_$(vault)=true}] run tag @s add IsResearched
$execute if entity @s[tag=Artifact,tag=Trial] if entity @a[tag=ItemShopping,advancements={exigence:vault/crucible_$(vault)=true}] run tag @s add IsResearched
$execute if entity @s[tag=Artifact,tag=Crucible] if entity @a[tag=ItemShopping,advancements={exigence:vault/crucible_$(vault)=true}] run tag @s add IsResearched

