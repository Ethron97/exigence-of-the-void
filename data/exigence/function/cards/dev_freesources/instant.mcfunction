# Replaces play.mcfunction
say [Fill each resources, also increase max by 4 each so we can test cards]

scoreboard players add MaxGreen Resources 4
scoreboard players add MaxRed Resources 4
scoreboard players add MaxAqua Resources 4

# Functionality
scoreboard players operation Green Resources = MaxGreen Resources
scoreboard players operation Red Resources = MaxRed Resources
scoreboard players operation Aqua Resources = MaxAqua Resources
