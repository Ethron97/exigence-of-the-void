# Setup wards on level 4 runs
#   Only called difficulty 4 and profile has not destroyed Wards

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

# Debug
execute if score toggle.wards debug matches 1 if score debug.level debug matches 3.. run say (D3) Setup wards

# Reset tags
tag @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,tag=ChosenCrystal] remove ChosenCrystal
tag @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,tag=CrystalCandidate] remove CrystalCandidate

# Select random level 4 echo or menace node
tag @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=EchoNode,tag=!ChosenEchoNode] add CrystalCandidate
tag @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=MenaceNode,tag=!Ravagered] add CrystalCandidate

# Copy to main health scoreboard
#   This is done from load_from_profile_node

# Summon ward if at least 1 health
execute if score ward.emerald game.story.wards matches 1.. run function exigence:game/other/wards/setup/emerald/0_setup_ward
execute if score ward.sapphire game.story.wards matches 1.. run function exigence:game/other/wards/setup/sapphire/0_setup_ward
execute if score ward.ruby game.story.wards matches 1.. run function exigence:game/other/wards/setup/ruby/0_setup_ward
execute if score ward.topaz game.story.wards matches 1.. run function exigence:game/other/wards/setup/topaz/0_setup_ward
execute if score ward.amethyst game.story.wards matches 1.. run function exigence:game/other/wards/setup/amethyst/0_setup_ward
