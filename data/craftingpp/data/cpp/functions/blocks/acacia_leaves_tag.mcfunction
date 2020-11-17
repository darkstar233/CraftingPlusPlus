execute if score #put_block_cmd cppValue matches 12970301 run tag @s add cpp_fruit_leaves
execute if score #put_block_cmd cppValue matches 12970302 run tag @s add cpp_ore_leaves
execute if score #put_block_cmd cppValue matches 12970303 run tag @s add cpp_wool_leaves
execute if score #put_block_cmd cppValue matches 12970304 run tag @s add cpp_sakura_leaves
data modify entity @s ArmorItems[3] set from storage cpp:blocks Item
