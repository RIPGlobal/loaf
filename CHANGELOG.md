# Change log

## [v0.6.0] - 2017-x-x

### Added
* Add new :exact option for precise url matching
* Add testing for Rails 5.0, 5.1

### Changed
* Remove Builder class
* Change Configuration to accept attributes at initilization
* Change Loaf::Railtie to load for both old and new rails versions

### Fixed
* Fix current page matching logic
* Fix controller filter to work with new Rails action semantics

## [v0.5.0] - 2015-01-31

### Added
* Add generator for locales file
* Add breadcrumbs scope for translations
* Add ability to pass proc as title and/or url for breadcrumb helper inside controller

### Changed
* Change breadcrumb formatter to use translations for title formatting

## [v0.4.0] - 2015-01-10

### Added
* Add ability to force current path through :force option

### Changed
* Change breadcrumbs view method to return enumerator without block
* Change Crumb to ruby class and add force option
* Change Configuration to ruby class and scope config options
* Change format_name to only take name argument
* Change to expose config settings on configuration
* Update test suite to work against different rubies 1.9.x, 2.x
* Test Rails 3.2.x, 4.0, 4.1, 4.2

### Fixed
* Fix bug with url parameter to allow for regular rails path variables

0.3.0 (February 25, 2012)

* Add loaf gem errors
* Add custom options validator for filtering invalid breadcrumbs params
* Renamed main gem helpers for adding breadcrumbs from `add_breadcrumb` to
  `breadcrumb`, both inside controllers and views.
* Add specs for isolated view testing.

0.2.1 (February 22, 2012)

* Add more integration tests and fixed bug with adding breadcrumbs inside view
* Add specs for controller extensions

0.2.0 (February 18, 2012)

* Change gemspec with new gem dependencies, use git
* Setup testing environment with dummy rails app
* Add integration tests for breadcrumbs view rendering
* Add translation module for breadcrumbs title lookup
* Add breadcrumb formatting module with tests
* Refactor names for controller and view extensions

## [v0.1.0] - 2011-10-22

* Initial implementation and release

[v0.6.0]: https://github.com/piotrmurach/tty-spinner/compare/v0.5.0...v0.6.0
[v0.5.0]: https://github.com/piotrmurach/tty-spinner/compare/v0.4.0...v0.5.0
[v0.4.0]: https://github.com/piotrmurach/tty-spinner/compare/v0.3.0...v0.4.0
[v0.3.0]: https://github.com/piotrmurach/tty-spinner/compare/v0.2.1...v0.3.0
[v0.2.1]: https://github.com/piotrmurach/tty-spinner/compare/v0.2.0...v0.2.1
[v0.2.0]: https://github.com/piotrmurach/tty-spinner/compare/v0.1.0...v0.2.0
[v0.1.0]: https://github.com/piotrmurach/tty-spinner/compare/v0.1.0
