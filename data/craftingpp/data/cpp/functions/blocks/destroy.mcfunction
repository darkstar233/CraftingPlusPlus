setblock ~ ~ ~ shulker_box
data modify storage cpp:blocks Item.Count set value 1b
data modify block ~ ~ ~ Items[{Slot:0b}] merge from storage cpp:blocks Item
loot give @p mine ~ ~ ~ shears{drop_content:1b}
setblock ~ ~ ~ air
kill @s
