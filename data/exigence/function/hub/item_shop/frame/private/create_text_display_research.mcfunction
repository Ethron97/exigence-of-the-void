#say create research display

# Create text display
$summon minecraft:text_display ~-0.03 ~-0.2 ~ {Tags:["NewResearchDisplay","ResearchDisplay"],text:[{text:"$(research_cost)🕮"}],alignment:"left",Rotation:[90.0f,0.0f],background:1}

# Add specific scores
scoreboard players operation @e[type=minecraft:text_display,tag=NewResearchDisplay] ShopFrameID = @s ShopFrameID

# Remove local tag
tag @e[type=minecraft:text_display,tag=NewResearchDisplay] remove NewResearchDisplay