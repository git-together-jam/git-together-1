//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;
uniform float alpha;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	//if (gl_FragColor.rgba == vec4(1.,1.,0.,0.5) || gl_FragColor.rgba == vec4(0.,0.,0.,0.5))
	//if (gl_FragColor.rgba == vec4(133./255.,127./255.,79./255.,1.))
	//{
	gl_FragColor.rgb += ( sin( time ) * .1 ) + .1;
	if ( gl_FragColor.a == 0. )
	{
		gl_FragColor.rgba += vec4( 1., 1., 1., ( sin( time ) * -.1 ) + .1);
		//gl_FragColor.rgba = vec4( 1., 1., 1. ,1. ); //debug
	}
	//}
	gl_FragColor.a *= alpha;
}
