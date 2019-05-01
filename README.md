Generally, a user account with standard permissions and an admin account should be created.
All normal operations should be performed with a standard account.

Make sure that the standard user cannot access admin space.

`common_config`: Common configs like shell configurations, portable across OS
Links to `~/`

`dotfiles/.scripts`: Common scripts which are portable across OS, frequent use
Links to `~/.scripts`

`dotfiles/.*`: Common dotfiles portable across all OS

`linux/.scripts`: Scripts particular to linux OS, frequent use
Links to `~/.config/scripts`

`mac/.scripts`: Scripts particular to macOS, frequent use
Links to `~/.config/scripts`

`scripts`: Utility scripts used infrequently



Extending configuration:

- On machines which will modify .zshrc, .bashrc files:
    Write a file to be sourced from these environment

    Example:

    filename : `.zshrc_custom_env_vars`

    Source it inside of .zshrc
    ```
        source .zshrc_custom_env_vars
    ```

Editors
```
Vim
Neovim
Helix
Kakoune

VSCode / VSCodium
Zed
Sublime Text

Eclipse IDE Suite
Jetbrains IDE Suite

```
