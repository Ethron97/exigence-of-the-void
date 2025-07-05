say Trigger all played Ascend cards

# Call as every card with Ascend (only played cards get that tag)
#   Will only trigger once per card in the deck, regardless of whether it is recycled or spellbound.
#   If an ascend card is recycled and played again, the Ascend will not "stack", since the tag is binary.
execute as @e[type=minecraft:armor_stand,tag=Card,tag=Ascend] run function exigence:deck/play_ascend with entity @s equipment.mainhand.components."minecraft:custom_data"
