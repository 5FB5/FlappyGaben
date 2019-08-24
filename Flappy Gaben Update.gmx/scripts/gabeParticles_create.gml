// setting up the particle system

global._systemabc = part_system_create()
part_system_depth(global._systemabc,-5)
global._particleabc = part_type_create()
//part_type_shape(global._particleabc,pt_shape_sphere)
part_type_sprite(global._particleabc, sParticle_image, 1, 0, 0);
part_type_size(global._particleabc,1,1,0,0)
part_type_scale(global._particleabc,1,1)
part_type_orientation(global._particleabc,0,0,0,0,0)
part_type_color3(global._particleabc,33023,65535,255)
part_type_alpha3(global._particleabc,1,1,1)
part_type_blend(global._particleabc,1)
part_type_life(global._particleabc,1,45)
part_type_speed(global._particleabc,5,5,0,0)
part_type_direction(global._particleabc,0,359,0,0)
part_type_gravity(global._particleabc,0,0)
global._emitterabc = part_emitter_create(global._systemabc)
part_emitter_region(global._systemabc,global._emitterabc,obj_drawScore.x-8,obj_drawScore.x+8,obj_drawScore.y-8,obj_drawScore.y+8,ps_shape_rectangle,ps_distr_invgaussian)

// Begin particle stream
part_particles_create(global._systemabc, (window_get_width() / 2) + 55, (window_get_height() / 2) - 260, global._particleabc, 50);
//part_emitter_stream(global._systemabc,global._emitterabc,global._particleabc,0)
// Code produced by Aerohawk ID 1 from wormintheworks.com
