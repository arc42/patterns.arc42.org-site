

# arc42 (mostly incomplete) guide to architecture patterns

Here we collect definitions and brief explanations of some patterns that might be
relevant for software architecture.

It's powered by Jekyll and a modified TTSCK theme (see below).

## License
As all of the arc42 content, this FAQ is free to use under a liberal Creative-Commons
license:

![](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)
This work is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).

## How to contribute

* open an issue in our issue tracker
* fork the repo, fix bugs and send a pull request


## How to develop and maintain this site

### With Docker

1. Install docker
2. For development, run
```
docker-compose up
```

3. A docker image will be built and the development-server will be started.

4. In case you want to publish the site, terminate the development server
by pressing Ctrl-C in your shell and run `docker-compose down`. Then start
a production build of the site:
```
docker-compose -f docker-compose-prod.yml up
```
The complete site will be generated into the folder `zz_site`- you
may ftp or rcp this to your production webserver.

### With local installation

1. Install [Jekyll](http://jekyllrb.com/)
2. Checkout/fork this repository
3. Open a shell in the root directory and execute the following commands:
```
bundle install;
bundle update
```

4. Then you should be able to start a local Jekyll server to test your installation:
```
bundle exec jekyll serve --config _config-localhost.yml
```

5. Open `http://localhost:4000` in your browser and enjoy your generated site.


#### Prerequisites

* Ruby installed (version 2.1 preferred, 2.4 didn't work for me)
* Unix or MacOS, getting Jekyll to work on Windows lies beyond my abilities
* some terminal proficiency


## Jekyll TTSCK Theme

For documentation on this theme, see the [original documentation](https://ttskch.github.io/jekyll-ttskch-theme/).

We implemented several enhancements over the original theme (e.g. responsive navigation, thx to Falk Hoppe)
