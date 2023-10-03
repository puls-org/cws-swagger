const customConfig = {
    // Hide the header
    configUrl: null,
    deepLinking: true,
    displayOperationId: false,
    defaultModelsExpandDepth: 0,
    defaultModelExpandDepth: 0,
    docExpansion: 'none',
    filter: true,
    maxDisplayedTags: null,
    showExtensions: true,
    showCommonExtensions: true,
    supportedSubmitMethods: ['get', 'post', 'put', 'delete', 'patch'],
    swagger2GeneratorName: 'swagger2',
    url: '/data/config.json',
};

window.onload = function () {
    const ui = SwaggerUIBundle({
        dom_id: '#swagger-ui',
        spec: customConfig,
        presets: [
            SwaggerUIBundle.presets.apis,
            SwaggerUIStandalonePreset,
        ],
    });
};