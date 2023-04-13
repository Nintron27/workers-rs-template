# {{project-name}}

{{project-description}}

## Development

### Nix

#### Installation

* If using nix-shell, enter the shell by running `nix-shell`
* If using direnv, allow permission with `direnv allow`

#### Development

* run `wrangler dev --local`

### NPM & Cargo

* Install the rust toolchain in order to have cargo installed by following
  [this](https://www.rust-lang.org/tools/install) guide.
* Install Wrangler with `npm ci`
* run `npm run dev`

## Publishing

### Nix

* run `wrangler public`

### NPM & Cargo

* run `npm run deploy`
