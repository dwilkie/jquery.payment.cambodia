# jQuery.payment.cambodia

[![Build Status](https://travis-ci.org/dwilkie/jquery.payment.cambodia.svg?branch=master)](https://travis-ci.org/dwilkie/jquery.payment.cambodia)

Extends [jquery.payment](https://github.com/stripe/jquery.payment) with cards from Cambodia.

## Usage

Please refer to [jQuery.payment](https://github.com/stripe/jquery.payment) for detailed usage instructions.

## Supported Cards

In addition to cards supported natively by [jQuery.payment](https://github.com/stripe/jquery.payment), [jQuery.payment.cambodia](https://github.com/dwilkie/jquery.payment.cambodia) also supports:

* Wing
* ACLEDA

## Installation inside a Rails application

Add the following lines to your Gemfile:

```ruby
source 'https://rails-assets.org'
gem 'rails-assets-jquery.payment.cambodia' # note: this will automatically install jquery.payment
```

Then run:

```
bundle install
```

Then add the following to your manifest file, e.g. `application.js`:

```javascript
//= require jquery.payment
//= require jquery.payment.cambodia
```

## Development

### Install dependencies

```
$ npm install
```

### Building

```
$ cake build
```

### Testing

```
$ cake test
```

### Releasing a new version

1. Run cake build to build the source
2. Commit new changes
3. Update the version number in both `package.json` and `bower.json`
4. Tag the new version with (include the 'v') `git tag vX.X.X`
5. Push to github with `git push origin master --tags`
6. Build a new version of the gem at https://rails-assets.org
