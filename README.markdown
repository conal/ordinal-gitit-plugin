This [Haskell](http://haskell.org)-based project is a simple [gitit](http://gitit.net/) plugin that formats ordinals like "21st".

Compile the project with `cabal install ordinal-gitit-plugin` (or just `cabal install` if you've already downloaded the source and are in its main directory).
Then add it to your gitit plugins list.
For instance, my wiki's `config` file contains the following line:

    plugins: Network.Gitit.Plugin.Ordinal

You can list additional plugins.  Separate by commas.

Finally, restart your gitit wiki, e.g.,

    gitit -f config

If everything works, the start-up messages will include the following:

    Loading plugin 'Network.Gitit.Plugin.Ordinal...
    Finished loading plugins.

