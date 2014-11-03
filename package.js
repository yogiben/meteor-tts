Package.describe({
  name: 'yogiben:tts',
  summary: 'Easily add text-to-speach to your meteor app',
  version: '0.0.0',
  git: 'http://github.com/yogiben/meteor-tts'
});

Package.onUse(function(api) {
  api.versionsFrom('1.0');

  api.addFiles('yogiben:meteor-tts.js');

  api.use('jquery', 'client');
  api.use('coffeescript', 'client');

  api.add_files('lib/client/tts.coffee', 'client');

  api.export('tts', 'client')


});