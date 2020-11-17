advancement revoke @s only cpp:blocks/acacia_sapling
execute as @s[predicate=cpp:mainhand/acacia_sapling] run data modify storage cpp:blocks Item set from entity @s SelectedItem
execute as @s[predicate=!cpp:mainhand/acacia_sapling] run data modify storage cpp:blocks Item set from entity @s Inventory[{Slot:-106b}]
execute store result score #put_block_cmd cppValue run data get storage cpp:blocks Item.tag.CustomModelData
execute if score #put_block_cmd cppValue matches 0 run scoreboard players set #put_block_cmd cppValue 12972000
execute if score #put_block_cmd cppValue matches 12970000..12979999 run function cpp:blocks/acacia_sapling_locate
