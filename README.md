# Marvelite

Simple wrapper to communicate with the Marvel Comics API.


> **Important:** This is a work in progress. There's only two endpoints to connect to. I am working into incorporating all of Marvel Comics API endpoints.

## Installation

Add this line to your application's Gemfile:

    gem 'marvelite'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install marvelite

## Contents

* [Usage](#usage)
* [Responses](#responses)


## Usage

Please register first in the [Marvel Comics Developer Portal](http://developer.marvel.com/) to get your API credentials (a public key and a private key, you'll need them both to configure and instantiate a client).

### Instantiate a client

```ruby
client = Marvelite::API::Client.new(
  :public_key => 'abcd1234',
  :private_key => '5678efgh'
)

# fetch a list of characters
client.characters
client.characters(:name => 'Spider-Man')
client.characters(:limit => 10, :offset => 400, :orderBy => 'name')

# fetch a single character
client.character(1009610)
client.character('Spider-Man')

# fetch a list of comics
client.comics
client.comics(:format => 'graphic novel', :limit => 10, :offset => 20 })

# fetch a single comic
client.comic(40128)

# fetch a list of comic characters
client.comic_characters(40128)
client.comic_characters(40128, :orderBy => 'name', :limit => 30, :offset => 20)

# fetch a list of events
client.events
client.events(:name => 'Acts of Vengeance')
client.events(:orderBy => 'name')

# fetch a single event
client.event(116)
client.event('Acts of Vengeance!')

# fetch a list of comics in an event
client.event_comics(116)
client.event_comics('Acts of Vengeance!')
client.event_comics(116, :format => 'graphic novel', :orderBy => 'title', :limit => 10)
client.event_comics('Acts of Vengeance!', :format => 'graphic novel', :orderBy => 'title', :limit => 10)
```

See the list of [available methods](https://github.com/antillas21/marvelite/wiki/Documentation) in the wiki.


## Responses

All requests to the API, return a `Marvelite::API::Response` object if successful or a `Marvelite::API::ErrorResponse` if API response returns an error. These objects are nothing more than the raw API response enhanced with Hashie methods.

This way you gain several adavantages to manipulate the response, like:

```ruby
# HashWithIndifferentAccess like functionality
response[:data][:results][0][:name]
response["data"]["results"][0]["name"]

# Top level methods
response.data
response.data[:results]
```



## Todo

* Add more endpoints


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
