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

- Java 8 or 11
- `$artifactoryUsername` and `$artifactoryPassword` set in your environment
- [jFrog CLI](https://jfrog.com/getcli/)
  - ensure you've logged in using in using your Artifactory credentials)

  ```
  jfrog rt config --url=https://stardog.jfrog.io/artifactory --user=username --password=password
  ```

- [jq](https://stedolan.github.io/jq/download/)

# Install

Plugin:

```shell
asdf plugin add stardog https://github.com/snowell/asdf-stardog.git
```

stardog:

```shell
# Show all installable versions
asdf list-all stardog

# Install specific version
asdf install stardog latest

# Set a version globally (on your ~/.tool-versions file)
asdf global stardog latest

# Set Stardog Home globally (on your ~/.stardog-home file)
asdf stardog home global /var/opt/stardog

# Set Stardog Ext locally (on your ./.stardog-ext file)
asdf stardog ext local /opt/stardog_ext
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/snowell/asdf-stardog/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Stephen Nowell](https://github.com/snowell/)
