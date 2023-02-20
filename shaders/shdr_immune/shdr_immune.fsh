//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 whiteEdit = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	whiteEdit.r = 1.0;
	whiteEdit.g = 0.84;
    gl_FragColor = whiteEdit;
}
