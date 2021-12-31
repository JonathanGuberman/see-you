# SEE YOU...

`see-you.sh` is a shell script which displays a friendly message in your terminal.
It's based on [scripts](https://gist.github.com/softdetours/87c0d293c9ff233c9078c7d822111db4)
created and shared by [Kyra Rehn](https://kyrarehn.com) in July 2014. Here's how she describes them:

> Displays a timeless message in your terminal with cosmic color effects

This version adds options for more salutations, an option to disable the cosmic colour effects, and a ZSH plugin to make integration simple.

## Usage

```shell
./see-you.sh
```

displays a random message in the terminal.

```shell
./see-you.sh [cowboy|cowgirl|cowperson|cowbot|cowpoke|cowhand]
```

displays a specific message.

Adding a second argument (regardless of value) will prevent colour output:

```shell
./see-you.sh [cowboy|cowgirl|cowperson|cowbot|cowpoke|cowhand] [whatever]
```

To display random output without colour, explicitly specify `random` as the first argument:

```shell
./see-you.sh random no-colour
```
## Oh My Zsh plugin

This repository also includes a plugin for [Oh My Zsh](https://ohmyz.sh/). It can probably be used with [other Zsh frameworks](https://github.com/unixorn/awesome-zsh-plugins#frameworks), but I haven't tried it.

### Installation

Clone the repository in to your `$ZSH_CUSTOM/plugins/`
directory:

```shell
git clone https://github.com/JonathanGuberman/see-you.git ${ZSH_CUSTOM}/plugins/see-you
```

Then, add `see-you` to the list of plugins in your `.zshrc` file 
to have the message automatically shown when exiting the shell. 
You may also want to add environment variables as described below
to configure the script's behaviour.

### Configuration
You can configure the behaviour of the plugin using environment variables, which you can also set in
your `.zshrc` file:

| Env variable | Description | Default value | Allowed values |
| ------------ | ----------- | ------------- | -------------- |
| `SEE_YOU` | Message to be shown | `random` | `cowboy`, `cowgirl`, `cowperson`, `cowbot`, `cowhand`, `cowpoke` |
| `SEE_YOU_NO_COSMIC` | Disable cosmic colouring | Not set | Any value will disable colours |
| `SEE_YOU_SLEEP` | How long to pause in seconds after showing message | `1` | Any positive number, including decimals |

## Why?!

Years ago I saw Kyra's [original shell script](https://gist.github.com/softdetours/87c0d293c9ff233c9078c7d822111db4) 
posted somewhere. I thought it was fun and added it to my logout script the way she suggested, by adding 
`sh ~/seeyouspacecowboy.sh; sleep 2` to my logout file. It made me smile whenever I'd exit a shell.

Recently I was setting up a new laptop from scratch and I missed it. I went to add it back in, but I didn't want to 
just put the script somewhere random. It seemed like a natural fit for using Oh My Zsh 
[plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Customization), since they have a dedicated place to put them, and it can
easily be added to the ZSH exit hook.

Then I noticed that Kyra had added "See You Space Cowgirl" version of the script, and that there had been a
[couple](https://gist.github.com/softdetours/87c0d293c9ff233c9078c7d822111db4#gistcomment-3493011)
[comments](https://gist.github.com/softdetours/87c0d293c9ff233c9078c7d822111db4#gistcomment-3494428) asking
for other salutations, so I decided to go a little bit overboard.

## Adding other salutations

Kyra [mentioned](https://gist.github.com/softdetours/87c0d293c9ff233c9078c7d822111db4#gistcomment-3494267) 
that she made the text [here](http://www.patorjk.com/software/taag/#p=display&v=0&f=Colossal&t=COWPERSON) and
deleted the third row manually. It would be pretty easy to add other options to this script. If you have a request
feel free to file an issue or make a pull request.

## Future development

To be honest, this is probably as far as this project goes. 
On the off chance that I decide to take it further, 
here are some improvements I'd like to make:

* Proper argument parsing to allow non-positional arguments and a proper flag for disabling colour
* Taking a list of salutations as an argument, from which one would be randomly selected
* More colour palettes
  * User-defined colour palettes
  * Additional built-in colour palettes

If you have any ideas, feel free to open an issue or make a pull request.
