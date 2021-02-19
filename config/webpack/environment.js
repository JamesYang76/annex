const { environment } = require('@rails/webpacker')


// Add an ProvidePlugin
environment.plugins.prepend('Provide',
    new webpack.ProvidePlugin({
      $: 'jquery',
      jQuery: 'jquery',
      Popper: ['popper.js','default']
    })
);

module.exports = environment;
