# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test stardog https://github.com/snowell/asdf-stardog.git "version"
```

Tests are automatically run in GitHub Actions on push and PR.
