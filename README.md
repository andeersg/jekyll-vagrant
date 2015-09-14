# Vagrant setup for a GitHub Pages-compatible Jekyll environment


Simple setup for local Jekyll development with Github Pages support.

How to use
--------------------

1. Install [Vagrant](http://docs.vagrantup.com/v2/getting-started/index.html) and [VirtualBox](https://www.virtualbox.org/).

2. Clone this repo: `git clone git@github.com:andeersg/jekyll-vagrant.git`

3. Now, `cd` into that directory and start up the Vagrant vm:

```
cd jekyll-vagrant
vagrant up
```

4. Finally, you can ssh into the vm and do all your Jekyll-related work in there:

```
vagrant ssh
```

## Getting started

You can make Jekyll set up a sample site for you by typing:
```
jekyll new sample-blog
```

This will create a new directory `sample-blog` in your current directory with a sample site in it.

To access via browser look at the next section.


## Port forwarding

The Vagrant vm is configured to forward port 8124 by default. So you can start a Jekyll server like so:

```
jekyll serve -P 8124
```

And then navigate to localhost:8124 on your host box.

## Note on SSH-forwarding

The Vagrantfile enables ssh-forwarding so that you can use your host ssh keys to authenticate with github. Make sure to add you keys to the agent with ```ssh-add``` before running ```vagrant ssh``` if your keys aren't automatically added to the agent.

## Credits

I have based this setup on another vagrant-jekyll setup found here: [Vagrant Github Pages](https://github.com/rjsilk/vagrant-github-pages)
