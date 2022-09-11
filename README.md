# DocGen4
Document Generator for Lean 4

## Usage
`doc-gen4` is the easiest to use via its custom Lake facet, in order
to do this you have to add it to your `lakefile.lean` like this:
```
meta if get_config? env = some "dev" then -- dev is so not everyone has to build it
require «doc-gen4» from git "https://github.com/leanprover/doc-gen4" @ "main"
```

Then you can generate documentation for an entire library using:
```
lake -Kenv=dev build Test:docs
```
If you have multiple libraries you want to generate documentation for
the recommended way right now is to run it for each library.

## With nix
Using [nix](https://nixos.org) with flake activated.

### Develop

Enable auto loading dependencies into the shell with `direnv allow` or manually with `nix develop`.

### Building

Build with `nix build .`

### Tests

Run tests with `nix run .#test`
