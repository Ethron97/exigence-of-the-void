# Add icon if there is a "forgotten" (dropped void card)

## CONSTRAINTS
#   AS/AT forgotten item

#====================================================================================================

data modify storage exigence:objective level_3 append value [{sprite:"exigence:item/cards/back/card_rare_void",atlas:"items",color:"white"}]
