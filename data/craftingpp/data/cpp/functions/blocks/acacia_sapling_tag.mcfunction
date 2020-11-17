execute store result storage cpp:blocks Item.tag.CustomModelData int 1 run scoreboard players add #put_block_cmd cppValue 4000
execute if score #put_block_cmd cppValue matches 12975001..12975080 run tag @s add cpp_crops
execute if score #put_block_cmd cppValue matches 12975101 run tag @s add cpp_rice
execute if score #put_block_cmd cppValue matches 12976000 run tag @s add cpp_acacia_sapling
execute if score #put_block_cmd cppValue matches 12976001..12976004 run tag @s add cpp_trees
data modify entity @s ArmorItems[3] set from storage cpp:blocks Item
