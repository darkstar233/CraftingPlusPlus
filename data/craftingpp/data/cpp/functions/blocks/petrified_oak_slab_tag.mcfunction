execute if score #put_block_cmd cppValue matches 0 run tag @s add cpp_barrel
execute if score #put_block_cmd cppValue matches 0 run tag @s add cpp_machine
execute if score #put_block_cmd cppValue matches 12970001..12970105 run tag @s add cpp_machine
execute if score #put_block_cmd cppValue matches 12970001..12970101 run tag @s add cpp_barrel
execute if score #put_block_cmd cppValue matches 12970105 run tag @s add cpp_chest
execute if score #put_block_cmd cppValue matches 12970201..12970202 run tag @s add cpp_gold_block

data modify storage cpp:blocks Item.Count set value 1b
execute as @s[tag=cpp_barrel] run setblock ~ ~ ~ barrel{CustomName:'{"translate":"block.minecraft.petrified_oak_slab"}'}
execute as @s[tag=cpp_chest] run setblock ~ ~ ~ chest
execute as @s[tag=cpp_gold_block] run setblock ~ ~ ~ gold_block
data modify block ~ ~ ~ CustomName set from storage cpp:blocks Item.tag.display.Name

execute if score #put_block_cmd cppValue matches 0 run tag @s add cpp_crafting_machine
execute if score #put_block_cmd cppValue matches 12970001 run tag @s add cpp_all_in_one_machine
execute if score #put_block_cmd cppValue matches 12970002 run tag @s add cpp_trade_machine
execute if score #put_block_cmd cppValue matches 12970003 run tag @s add cpp_mob_projector
execute if score #put_block_cmd cppValue matches 12970004 run tag @s add cpp_golden_anvil
execute if score #put_block_cmd cppValue matches 12970006 run tag @s add cpp_item_processer
execute if score #put_block_cmd cppValue matches 12970007 run tag @s add cpp_dustbin
execute if score #put_block_cmd cppValue matches 12970008 run tag @s add cpp_chest_dropper
execute if score #put_block_cmd cppValue matches 12970010 run tag @s add cpp_empty_bookshelf
execute if score #put_block_cmd cppValue matches 12970105 run tag @s add cpp_beacon_enhancer
execute if score #put_block_cmd cppValue matches 12970201 run tag @s add cpp_moon_stone
execute if score #put_block_cmd cppValue matches 12970202 run tag @s add cpp_sun_stone

execute store result score @s[tag=cpp_all_in_one_machine] cppStoredxp run data get storage cpp:blocks Item.tag.cppStoredxp
execute store result score @s[tag=cpp_trade_machine] cppTradeValue run data get storage cpp:blocks Item.tag.cppTradeValue
execute store result score @s[tag=cpp_mob_projector] cppStoredxp run data get storage cpp:blocks Item.tag.cppStoredxp
scoreboard players set @s cppTick 0

data modify entity @s ArmorItems[3] set from storage cpp:blocks Item
