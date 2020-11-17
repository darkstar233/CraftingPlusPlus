data modify storage cpp:trim Items set from block ~ ~ ~ Items
setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items set from block ~ ~ ~ Items
data remove block ~ ~ ~ Items
loot insert ~ ~ ~ mine ~ 255 ~ shears{drop_content:1b}
setblock ~ 255 ~ air
