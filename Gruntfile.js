module.exports = function(grunt) {

    grunt.initConfig({
        'smush-components': {
            dist: {
                fileMap: {
                    js: './assets/js/components.js',
                    css: './assets/css/components.css'
                }
            }
        }
    });
    grunt.loadNpmTasks('grunt-smush-components');

};
