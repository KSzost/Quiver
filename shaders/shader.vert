#version 430 core

layout(location = 0) in vec3 vertexPosition;
layout(location = 1) in vec2 vertexTexCoord;
layout(location = 2) in vec3 vertexNormal;

uniform mat4 transformation;

uniform mat4 model;

out vec3 interpNormal;

out vec3 vecPos;

void main()
{
	gl_Position = transformation * vec4(vertexPosition, 1.0);
	interpNormal = vec3(model * vec4(vertexNormal,0.0f));
	vecPos = vec3(model * vec4(vertexPosition,1.0f));
}
