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

- `bash`, `curl`, `tar`: generic POSIX utilities.

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
echo 'WRITE root 2' | abc -
1.414213562373095
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.


[Thanks goes to these contributors](https://github.com/alisaifee/asdf-abc/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Ali-Akber Saifee](https://github.com/alisaifee/)
