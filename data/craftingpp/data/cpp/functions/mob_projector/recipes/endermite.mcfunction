tag @s add cpp_machine_work
scoreboard players add @s cppTick 12
data modify block ~ ~ ~ Items[{Slot:9b}].tag.CustomModelData set value 12970810
execute if score @s cppTick >= #mobProjectorPeriod cppValue run function cpp:mob_projector/recipes/endermite_done