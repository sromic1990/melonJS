precision highp float;


// Attributes

/**
 * Current vertex point
 * @ignore
 */
attribute vec2 aVertex;


// Uniforms

/**
 * Projection matrix
 * @ignore
 */
uniform mat3 uMatrix;

/**
 * Vertex color
 * @ignore
 */
uniform vec4 uColor;

// Varyings

/**
 * Fragment color
 */
varying vec4 vColor;


void main(void) {
    // Transform the vertex position by the projection matrix
    gl_Position = vec4((uMatrix * vec3(aVertex, 1)).xy, 0, 1);
    // Pass the remaining attributes to the fragment shader
    vColor = vec4(uColor.rgb * uColor.a, uColor.a);
}
