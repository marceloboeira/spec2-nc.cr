# spec2-nc
> Spec2 tests with notifications

Proudly inspired by [rspec-nc](https://github.com/twe4ked/rspec-nc).

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  spec2-nc:
    github: marceloboeira/spec2-nc.cr
```

## Usage

Add this to you `spec_helper.cr`:

```crystal
require "spec2-nc"

Spec2.configure_reporter(Spec2::Reporters::Nc)
```

## Roadmap

* [x] POC
* [ ] Mock TerminalNotifier on tests
* [ ] Implement full usable Notifier
* [ ] Make Spec2 work with multiple Reporters
* [ ] NcFirstFail - Notifies on the first failed example
* [ ] Custom Notification settings(sounds)

## Contributing

1. Fork it (https://github.com/marceloboeira/spec2-nc.cr/fork)
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request
