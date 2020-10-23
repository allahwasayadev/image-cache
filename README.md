
# Image cache

## Demo
[Click Here to view](https://image-cache-congress.herokuapp.com/application/get_image?image_url=https://theunitedstates.io/images/congress/225x275/B000944.jpg).

## Requirements

For development, you will only need Ruby and gem installed on your environment.

### Ruby

[Ruby](https://www.ruby-lang.org/en/documentation/installation/) is really easy to install, you should be able to run the following command after the installation procedure
below.

    $ ruby -v
    2.6.3p62

#### Ruby installation on OS X

You will need to use a Terminal. On OS X, you can find the default terminal in
`/Applications/Utilities/Terminal.app`.

Please install [Homebrew](http://brew.sh/) if it's not already done with the following command.

    $ ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

If everything work fine, you should run

    brew install ruby

#### Ruby installation on Linux

    sudo apt-get install ruby


## Install Bundle and Other Gems

You will need to install bundler before installing other gems, you can run the following command for this:

    $ gem install bundler


After run this command to install all the needed gems:

    $ bundle install

## Run the server

You can start the server using this command:

    $ rails start

## Notes
- This repo includes only one API end point `/application/get_image`
- It accepts one parameter `image_url` that should be an http link
- It caches the image after converting it to webp and returns it as a file stream
- I have deployed it on [Heroku](https://image-cache-congress.herokuapp.com).
