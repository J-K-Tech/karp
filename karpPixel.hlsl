cbuffer ShaderParams : register(b0) {
    float lift;
}
float4 main(float2 pos : POSITION) : SV_POSITION
{
    if (pos.x > 0.5) {
        pos.x -= lift;
    } else {
        pos.x += lift;
    }
    if (pos.y < 0.5) {
        pos.y -= lift ;
    } else {
        pos.y -= lift;
    }
    return float4(pos, 0.0f, 1.0f);
}
