varying vec2 Vuv;
varying vec3 vColor;



void main()
{   
    vec2 uv = gl_PointCoord;

    /// my personal code
    // vec3 color  = vec3( .0);
    // float pointDistance = 1. - distance(uv, vec2(.5, .5));
    // color += pow( pointDistance, 10.);
    // color += step(.3, color);

    //brunos code
    float distanceToCenter = length( uv -.5);
    float alpha = 0.05 / distanceToCenter - .1;

    gl_FragColor = vec4(vColor, alpha);
    #include <tonemapping_fragment>
    #include <colorspace_fragment>
}  