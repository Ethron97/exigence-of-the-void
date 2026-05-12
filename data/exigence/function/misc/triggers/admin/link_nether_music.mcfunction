# Link nether music
tellraw @s [{text:">> Click to open ",color:"gray",underlined:true},{text:"Nether Music",color:"red"},{text:" playlist <<",color: "gray",click_event:{action:"open_url",url:"https://www.youtube.com/watch?v=gMoS2FvkyLE&list=PLUSc-SkbZRSPAdrBNHIJTJZ_lZGBLC4GI"}}]

# Reset trigger score
scoreboard players reset @s LinkNetherMusic
scoreboard players enable @s LinkNetherMusic