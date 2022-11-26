# Contributing

Testing Locally:

```shell
asdf plugin test <plugin-name> <plugin-url> [--asdf-tool-version <version>] [--asdf-plugin-gitref <git-ref>] [test-command*]

#
asdf plugin test abc https://github.com/alisaifee/asdf-abc.git "echo 'WRITE 0' | abc"
```

Tests are automatically run in GitHub Actions on push and PR.
