const promptDirectory = require('inquirer-directory');

module.exports = function (plop) {
    plop.setPrompt('directory', promptDirectory);

    const basePath = process.cwd();

    const path = {
        type: 'directory',
        name: 'directory',
        message: 'Choose a directory..',
        basePath: basePath
    };

    plop.setGenerator('store', {
        description: 'ngrx store generator',
        prompts: [
            path,
        ],
        actions: function (data) {
            const {directory} = data;
            data.targetFolder = getTargetFolder(directory);
            return createActions(directory, ['actions', 'effects', 'reducer']);
        }

    });

    function createActions(directory, storeTypes) {
        const actions = [];
        storeTypes.forEach((type) => {
            actions.push(
                {
                    type: 'add',
                    skipIfExists: true,
                    path: getPath(directory, type),
                    templateFile: `plop-templates/${type}.ts`,
                    abortOnFail: true
                }
            )
        });
        return actions;
    }

    function getPath(selectedDirectory, storeType) {
        const targetFolder = getTargetFolder(selectedDirectory);
        return `${process.cwd()}/${selectedDirectory}/store/${targetFolder}.${storeType}.ts`;
    }

    function getTargetFolder(selectedDirectory) {
        return selectedDirectory.split('/').pop();
    }
};