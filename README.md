# repo-watcher [![Build Status][tb]][tp]

[tb]: https://img.shields.io/travis/caarlos0/repo-watcher/master.svg?style=flat-square
[tp]: https://travis-ci.org/caarlos0/repo-watcher

> Watches repositories star counts, so you can see how it evolves
(and graph it!).

I use this script to periodically check how my repos are evolving in a star
number sense.

Basically, just create a `repos.txt` file like this:

```txt
caarlos0  jvm
caarlos0  something else

# my company oss repos
contaazul turbine-ec2

# commented out repo:
# netflix hystrix
```

The script will ignore anything that don't start with a letter, so, empty lines
and comments are all right.

You can run it with:

```console
GITHUB_TOKEN="my-token" ./collect
```

If you don't provide a token, it will work too, but the API rate is lower.

The collected data will be stored in `stars.txt` file. And, of course, you can
easily plot it to charts. There is already an example `report` binary that
uses spark to plot graphs right on your terminal:

![screenshot][scrn]

[scrn]: https://raw.githubusercontent.com/caarlos0/repo-watcher/master/imgs/01.png
