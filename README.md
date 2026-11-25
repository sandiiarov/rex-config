# rex-config

My [Rex](https://www.superlogical.com/rex) setup for macOS: key bindings, app settings and Catppuccin themes, synced between machines with one command.

## What's here

| File | What it holds |
|---|---|
| `init.lua` | Key bindings. tmux-style bindings behind a `cmd+s` prefix. |
| `settings.json` | Rex app settings (appearance, sidebar, tabs, font, cursor, and so on). |
| `themes/*.json` | Catppuccin Latte, Frappé, Macchiato and Mocha. |
| `rex-config` | The export/import script. Python 3, standard library only. |

Rex reads `init.lua` from `~/.config/rex`. It keeps app settings and imported themes in macOS preferences (`com.superlogical.rex`), which `rex-config` reads and writes.

## Set up a new Mac

```sh
git clone https://github.com/sandiiarov/rex-config.git ~/.config/rex
brew install --cask font-jetbrains-mono-nerd-font
ln -s ~/.config/rex/rex-config ~/.local/bin/rex-config
rex-config import
```

`import` quits Rex, writes the settings and themes, reopens Rex and reloads `init.lua`. Your sessions keep running, because they live in the Rex server, not the app. A log goes to `~/Library/Logs/rex-config-import.log`.

## Day to day

```sh
rex-config export            # save this Mac's settings and themes, commit, push
rex-config import            # pull, then apply on this Mac
rex-config import --dry-run  # list what import would change
```

`export` only saves portable settings. It skips window positions, open sessions, update-check state, server and sync details, and Remote Control, which you turn on per machine.
