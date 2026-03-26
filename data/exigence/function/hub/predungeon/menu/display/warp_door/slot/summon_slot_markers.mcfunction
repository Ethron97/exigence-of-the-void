# Load the "door slot" markers, so we can move other assets around the door easily

## CONSTRAINTS
#   AT door frame

#====================================================================================================

# 0 is middle, 1 is bottom left, then counter-clockwise from there
#   Relative pixel coordiantes marked x y

# 0 0
summon minecraft:marker ^ ^ ^ {Tags:["DoorPart","DoorSlotMarker","DoorSlotMarker0","PredungeonDisplay"],CustomName:{text:"Marker | DoorSlotMaker0"}}

# -6 -13
summon minecraft:marker ^-0.375 ^-0.8125 ^ {Tags:["DoorPart","DoorSlotMarker","DoorSlotMarker1","PredungeonDisplay"],CustomName:{text:"Marker | DoorSlotMaker1"}}

# 7 -13
summon minecraft:marker ^0.4375 ^-0.8125 ^ {Tags:["DoorPart","DoorSlotMarker","DoorSlotMarker2","PredungeonDisplay"],CustomName:{text:"Marker | DoorSlotMaker2"}}

# 13 0
summon minecraft:marker ^0.8125 ^ ^ {Tags:["DoorPart","DoorSlotMarker","DoorSlotMarker3","PredungeonDisplay"],CustomName:{text:"Marker | DoorSlotMaker3"}}

# 7 13
summon minecraft:marker ^0.4375 ^0.8125 ^ {Tags:["DoorPart","DoorSlotMarker","DoorSlotMarker4","PredungeonDisplay"],CustomName:{text:"Marker | DoorSlotMaker4"}}

# -6 13
summon minecraft:marker ^-0.375 ^0.8125 ^ {Tags:["DoorPart","DoorSlotMarker","DoorSlotMarker5","PredungeonDisplay"],CustomName:{text:"Marker | DoorSlotMaker5"}}

# -13 0
summon minecraft:marker ^-0.8125 ^ ^ {Tags:["DoorPart","DoorSlotMarker","DoorSlotMarker6","PredungeonDisplay"],CustomName:{text:"Marker | DoorSlotMaker6"}}