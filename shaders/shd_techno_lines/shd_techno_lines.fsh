//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vPosition;

uniform float R;
uniform float G;
uniform float B;
uniform float time;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (gl_FragColor.rgb == vec3( R, G, B ))
	{
		gl_FragColor.b *= clamp(sin(time + (v_vPosition.x + v_vPosition.y) / 20.) * 20., 1., 1.5);
		gl_FragColor.rgb *= vec3(clamp(sin(-time + (v_vPosition.x - v_vPosition.y) / 10.) * 15., 1., 1.5));
	}
}
