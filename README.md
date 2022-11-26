<div align="center">

# asdf-abc [![Build](https://github.com/alisaifee/asdf-abc/actions/workflows/build.yml/badge.svg)](https://github.com/alisaifee/asdf-abc/actions/workflows/build.yml) [![Lint](https://github.com/alisaifee/asdf-abc/actions/workflows/lint.yml/badge.svg)](https://github.com/alisaifee/asdf-abc/actions/workflows/lint.yml)


[abc](https://homepages.cwi.nl/~steven/abc) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

**TODO: adapt this section**

- `bash`, `curl`, `tar`: generic POSIX utilities.
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add abc
# or
asdf plugin add abc https://github.com/alisaifee/asdf-abc.git
```

abc:

```shell
# Show all installable versions
asdf list-all abc

# Install specific version
asdf install abc latest

# Set a version globally (on your ~/.tool-versions file)
asdf global abc latest

# Now abc commands are available
echo 'WRITE 0' | abc
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/alisaifee/asdf-abc/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Ali-Akber Saifee](https://github.com/alisaifee/)
