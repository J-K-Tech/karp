shader_type canvas_item;
uniform float lift:hint_range(0.0, .5, 0.01)=.0;
uniform sampler2D tx;
void vertex() {
    if (VERTEX.x>.5){
        VERTEX.x-=lift*58.;
    }
    else {

        VERTEX.x+=lift*56.;
    }
    if (VERTEX.y<.5){
    VERTEX.y-=lift*600.;
    }
    else{
    VERTEX.y-=lift*100.;
    }
}

void fragment() {
    vec2 uv=UV;
    float xidx=(uv.x-.5)*lift*3.;

    uv.x-=xidx*(-uv.y+1.);
    COLOR=vec4(texture(tx,uv).rgb,1.);
}
