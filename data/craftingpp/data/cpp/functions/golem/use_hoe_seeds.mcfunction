fill ~ 255 ~ ~ 255 ~1 minecraft:chest
data modify block ~ 255 ~ Items set from entity @s HandItems[1].tag.BlockEntityTag.Items
execute if score @s cppValue matches 1 run data modify block ~ 255 ~1 Items[{id:"minecraft:wheat_seeds"}] set from block ~ 255 ~ Items[{id:"minecraft:wheat_seeds"}]
execute if score @s cppValue matches 2 run data modify block ~ 255 ~1 Items[{id:"minecraft:carrot"}] set from block ~ 255 ~ Items[{id:"minecraft:carrot"}]
execute if score @s cppValue matches 3 run data modify block ~ 255 ~1 Items[{id:"minecraft:potato"}] set from block ~ 255 ~ Items[{id:"minecraft:potato"}]
execute if score @s cppValue matches 4 run data modify block ~ 255 ~1 Items[{id:"minecraft:beetroot_seeds"}] set from block ~ 255 ~ Items[{id:"minecraft:beetroot_seeds"}]
execute if score @s cppValue matches 5 run data modify block ~ 255 ~1 Items[{id:"minecraft:sweet_berries"}] set from block ~ 255 ~ Items[{id:"minecraft:sweet_berries"}]
execute store result score #temp cppValue run data get block ~ 255 ~1 Items[0].Count
execute if score #temp cppValue matches 1 run data modify block ~ 255 ~ Items[{id:0}].Slot set from block ~ 255 ~1 Items[0].Slot
execute store result block ~ 255 ~1 Items[0].Count byte 1 run scoreboard players remove #temp cppValue 1
data modify block ~ 255 ~ Items append from block ~ 255 ~1 Items[0]
data modify entity @s HandItems[1].tag.BlockEntityTag.Items set from block ~ 255 ~ Items
fill ~ 255 ~ ~ 255 ~1 minecraft:air

execute if score @s cppValue matches 1 run setblock ~ ~ ~ minecraft:wheat
execute if score @s cppValue matches 2 run setblock ~ ~ ~ minecraft:carrots
execute if score @s cppValue matches 3 run setblock ~ ~ ~ minecraft:potatoes
execute if score @s cppValue matches 4 run setblock ~ ~ ~ minecraft:beetroots
execute if score @s cppValue matches 5 run setblock ~ ~ ~ minecraft:sweet_berry_bush