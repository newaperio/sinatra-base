# Sinatra Base

This is our base Sinatra app structure at [NewAperio](http://newaperio.com).

Sinatra famously doesn't provide any configuration nor does it enforce any particular way of setting up an app. After developing many Sinatra apps, we noticed a trend amongst the structure, gems and configurations we employed. This template is compiled from those trends, and the base app that we use for all our Sinatra projects. As such, it's subject to change, but represents our current recommendations.

# Gemfile

We add some commonly used gems for enhancing Sinatra, including:

- Rack Flash for flash messages
- Rack Protection for some security and vulnerability protection
- Rack CSRF for cross-site forgery protection
- JSON to render JSON responses
- Unicorn to serve the app
- Foreman to manage processes
- Rerun to reload files in development

And these gems useful in production:

- New Relic RPM for monitoring performance

# Structure

We employ a consistent directory structure to keep files in obvious places.

├── Gemfile
├── Procfile
├── README.md
├── app.rb
├── config
│   ├── environment.rb
│   └── unicorn.rb
├── config.ru
├── helpers
├── models
├── public
│   ├── css
│   ├── img
│   └── js
└── views

# Configuration

We add some basic configuration to make things easy.

- An environment file to load the entire app
- Some basic security and vulnerability protection
- JSON parsing and rendering
- Flash message support