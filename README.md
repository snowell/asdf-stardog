<div align="center">

# asdf-stardog ![Build](https://github.com/snowell/asdf-stardog/workflows/Build/badge.svg) ![Lint](https://github.com/snowell/asdf-stardog/workflows/Lint/badge.svg)

[stardog](https://github.com/snowell/asdf-stardog) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Why?](#why)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

- `bash`, `curl`, `tar`: generic POSIX utilities.
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add stardog
# or
asdf plugin add https://github.com/snowell/asdf-stardog.git
```

stardog:

```shell
# Show all installable versions
asdf list-all stardog

# Install specific version
asdf install stardog latest

# Set a version globally (on your ~/.tool-versions file)
asdf global stardog latest

# Now stardog commands are available
version
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/snowell/asdf-stardog/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Stephen Nowell](https://github.com/snowell/)
