setblock ~ 255 ~ shulker_box
loot replace block ~ 255 ~ container.0 1 loot cpp:crafting_machine
data modify block ~ 255 ~ Items[0].Count set from entity @s Inventory[{Slot:-106b}].Count
loot replace entity @s weapon.offhand 1 mine ~ 255 ~ shears{drop_content:1b}
setblock ~ 255 ~ air