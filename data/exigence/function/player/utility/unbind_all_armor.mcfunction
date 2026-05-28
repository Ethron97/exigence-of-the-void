# Add curse of binding to all pieces of armor

## CONSTRAINTS
#   AS player

#====================================================================================================

# If the armor is not enchanted by default, remove enchantment glint override
execute if items entity @s armor.head * unless items entity @s armor.head *[custom_data~{enchanted:true}] run item modify entity @s armor.head exigence:allow_enchantment_glint
execute if items entity @s armor.chest * unless items entity @s armor.chest *[custom_data~{enchanted:true}] run item modify entity @s armor.chest exigence:allow_enchantment_glint
execute if items entity @s armor.legs * unless items entity @s armor.legs *[custom_data~{enchanted:true}] run item modify entity @s armor.legs exigence:allow_enchantment_glint
execute if items entity @s armor.feet * unless items entity @s armor.feet *[custom_data~{enchanted:true}] run item modify entity @s armor.feet exigence:allow_enchantment_glint

execute if items entity @s armor.head * run item modify entity @s armor.head exigence:unbind
execute if items entity @s armor.chest * run item modify entity @s armor.chest exigence:unbind
execute if items entity @s armor.legs * run item modify entity @s armor.legs exigence:unbind
execute if items entity @s armor.feet * run item modify entity @s armor.feet exigence:unbind
