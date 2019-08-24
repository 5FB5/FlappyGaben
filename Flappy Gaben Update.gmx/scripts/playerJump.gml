if (global.defeat == false) {
    var pitch = choose(1, 0.9, 1.1);
    audio_sound_pitch(snd_swing, pitch);
    
    vspeed = -6.8;
    audio_play_sound(snd_swing, 1, false);
    image_angle = -7.5; 
    
    alarm[1] = 15;
}

