//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)  В этом шейдере мы передаём входные данные
//attribute vec3 in_Normal;                  // (x,y,z)     
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;                    // Здесь передаём что будет во фрагментном шейдере
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0); //задаём вектор с 4-мя значениями
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos; //задаём позицию вертекса в мире. Для этого умножаем матрицу на позицию
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    gl_FragColor = texture2D( gm_BaseTexture, v_vTexcoord ) * v_vColour;//вычисляем цвет пикселя
    
    gl_FragColor.rgb = 1. - gl_FragColor.rgb;
}
