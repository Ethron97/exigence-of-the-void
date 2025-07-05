#say create money display

# Create text display
$summon minecraft:text_display ~-0.01 ~-0.5 ~ {Tags:["NewMoneyDisplay","MoneyDisplay"],text:[{text:"$(money_cost)💎"}],alignment:"left",Rotation:[90.0f,0.0f],background:1}

# Add specific scores
scoreboard players operation @e[type=minecraft:text_display,tag=NewMoneyDisplay] ShopFrameID = @s ShopFrameID

# Remove local tag
tag @e[type=minecraft:text_display,tag=NewMoneyDisplay] remove NewMoneyDisplay