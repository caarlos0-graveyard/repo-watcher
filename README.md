# repo-watcher

> Watches repositories star count, so you can see how it evolves.

I use this script to periodically check how my repos are evolving in a star
number sense.

Basically, just create a `repos` file like this:

```txt
caarlos0  jvm
caarlos0  something else

# my company oss
contaazul turbine-ec2
```

The script will ignore anything that don't start with a letter, so, empty lines
and comments are all right.

You can run it with:

```console
GITHUB_TOKEN="my-token" ./repo-watcher
```

If you don't provide a token, it will work too, but the API rate is lower.
