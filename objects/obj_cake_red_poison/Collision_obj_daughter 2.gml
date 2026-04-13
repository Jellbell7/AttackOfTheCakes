/// @description Insert description here
// You can write your code in this editor


// Decrement red enemy health by bullet's damage amount.
//other.hp -= damage;

// Destroy this bullet and call the Destroy event.
instance_destroy(id, true);

instance_destroy(obj_daughter);