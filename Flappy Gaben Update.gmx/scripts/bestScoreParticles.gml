// setting up the particle system

global._systemabcd = part_system_create()
part_system_depth(global._systemabcd,-1000)
global._particleabcd = part_type_create()
part_type_shape(global._particleabcd,pt_shape_flare)
part_type_size(global._particleabcd,1,2,0,0)
part_type_scale(global._particleabcd,1,1)
part_type_orientation(global._particleabcd,0,0,0,0,0)
part_type_color3(global._particleabcd,65280,16711680,33023)
part_type_alpha3(global._particleabcd,1,1,1)
part_type_blend(global._particleabcd,1)
part_type_life(global._particleabcd,35,65)
part_type_speed(global._particleabcd,5,6,0,0)
part_type_direction(global._particleabcd,0,359,0,0)
part_type_gravity(global._particleabcd,0,0)
global._emitterabcd = part_emitter_create(global._systemabcd)
part_emitter_region(global._systemabcd,global._emitterabcd,x-15,x+15,y-15,y+15,ps_shape_rectangle,ps_distr_linear)

// Begin particle stream

part_particles_create(global._systemabcd, (window_get_width() / 2) - 300, (window_get_height() / 2) - 330, global._particleabcd, 1);
part_particles_create(global._systemabcd, (window_get_width() / 2) + 300, (window_get_height() / 2) - 330, global._particleabcd, 1);
// Code produced by Aerohawk ID 1 from wormintheworks.com

