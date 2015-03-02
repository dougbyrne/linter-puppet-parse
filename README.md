# linter-puppet-parse

This package will lint your `.pp` opened files in Atom through [puppet parser validate](https://docs.puppetlabs.com/references/3.5.0/man/parser.html).

## Installation

* Install puppet
* `$ apm install language-puppet` (if you don't have [language-puppet](https://github.com/atom/language-puppet) installed)
* `$ apm install linter` (if you don't have [linter](https://github.com/AtomLinter/Linter) installed)
* `$ apm install linter-puppet-parse`

## Settings
You can configure linter-puppet-parse by editing ~/.atom/config.cson (choose Open Your Config in Atom menu):
```
'linter-puppet-parse':
  'puppetParseArguments': ''
  'puppetParseExecutablePath': null # puppet-parse path. run 'which puppet' to find the path
```
