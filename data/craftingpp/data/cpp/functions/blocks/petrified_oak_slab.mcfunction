advancement revoke @s only cpp:blocks/petrified_oak_slab
execute as @s[predicate=cpp:mainhand/petrified_oak_slab] run data modify storage cpp:blocks Item set from entity @s SelectedItem
execute as @s[predicate=!cpp:mainhand/petrified_oak_slab] run data modify storage cpp:blocks Item set from entity @s Inventory[{Slot:-106b}]
execute store result score #put_block_cmd cppValue run data get storage cpp:blocks Item.tag.CustomModelData
execute if score #put_block_cmd cppValue matches 0 run function cpp:blocks/petrified_oak_slab_locate
execute if score #put_block_cmd cppValue matches 12970000..12979999 run function cpp:blocks/petrified_oak_slab_locate
