# Add curse of binding to all pieces of armor

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if items entity @s armor.head * run item modify entity @s armor.head exigence:bind
execute if items entity @s armor.chest * run item modify entity @s armor.chest exigence:bind
execute if items entity @s armor.legs * run item modify entity @s armor.legs exigence:bind
execute if items entity @s armor.feet * run item modify entity @s armor.feet exigence:bind

# If the item is not enchanted by default, overwrite glint
execute if items entity @s armor.head * unless items entity @s armor.head *[custom_data~{enchanted:true}] run item modify entity @s armor.head exigence:remove_enchantment_glint
execute if items entity @s armor.chest * unless items entity @s armor.chest *[custom_data~{enchanted:true}] run item modify entity @s armor.chest exigence:remove_enchantment_glint
execute if items entity @s armor.legs * unless items entity @s armor.legs *[custom_data~{enchanted:true}] run item modify entity @s armor.legs exigence:remove_enchantment_glint
execute if items entity @s armor.feet * unless items entity @s armor.feet *[custom_data~{enchanted:true}] run item modify entity @s armor.feet exigence:remove_enchantment_glint
