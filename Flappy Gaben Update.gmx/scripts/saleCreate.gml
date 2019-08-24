steamSale = choose(obj_steamSale90, obj_steamSale50, obj_steamSale45, obj_steamSale20, obj_steamSale15);

if (global.defeat == false) {
    instance_create(obj_player.x - 45, obj_player.y, steamSale);
}
