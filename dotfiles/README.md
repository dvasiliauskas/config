These dotfiles should be common across unix systems such as linux, macos

```
chmod +x link_dotfiles
./link_dotfiles
```

Usage:

1. Only take what you need, copy to target machine/environment.
2. Use 'link_dotfiles' command to copy over everything.

Resolution of paths and vars:
    Simply make sure all env's are present in the calling shell

More of $XDG env variables will be used to replace dotfiles
