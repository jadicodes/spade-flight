shader_type canvas_item;
uniform sampler2D noise;
void fragment() {
    vec2 uv = vec2(fract(UV.x + TIME/8.0), UV.y);
    COLOR = texture(TEXTURE, uv);
}