# Set data for handling armor durability

## CONSTRAINTS
#   AS item (contents=armor)

#====================================================================================================

# If the item is armor, add stuff for durability
data modify entity @s Item.components."minecraft:enchantments"."exigence:unbreakable" set value 1
data modify entity @s Item.components."minecraft:tooltip_display".hidden_components set value ["attribute_modifiers","trim","enchantments","dyed_color"]
data modify entity @s Item.components."minecraft:enchantment_glint_override" set value false

# Insert lore line
item modify entity @s container.0 exigence:durability/insert_lore_line
# Set durability
item modify entity @s container.0 exigence:durability/10