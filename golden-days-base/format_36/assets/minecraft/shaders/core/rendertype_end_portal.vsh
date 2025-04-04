#version 150

#moj_import <minecraft:projection.glsl>

in vec3 Position;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;

out vec4 texProj0;
out vec4 worldPos;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
    worldPos = vec4(vec3(Position.x / 2.0, Position.y, Position.z / 2.0), 1.0);

    texProj0 = projection_from_position(gl_Position);
}
