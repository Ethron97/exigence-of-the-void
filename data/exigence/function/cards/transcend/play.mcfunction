#say Trigger all played Ascend cards
function exigence:cards/announce_card

# Call as every card with Ascend (only played cards get that tag)
#   Will only trigger once per card in the deck, regardless of whether it is recycled or spellbound.
#   If an ascend card is recycled and played again, the Ascend will not "stack", since the tag is binary.
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,tag=Card,tag=Ascend] run function exigence:deck/play_ascend with entity @s equipment.mainhand.components."minecraft:custom_data"
