linterPath = atom.packages.getLoadedPackage("linter").path
Linter = require "#{linterPath}/lib/linter"

class LinterPuppetParse extends Linter
  # The syntax that the linter handles. May be a string or
  # list/tuple of strings. Names should be all lowercase.
  @syntax: ['source.puppet']

  # A string, list, tuple or callable that returns a string, list or tuple,
  # containing the command line (with arguments) used to lint.
  cmd: 'puppet parser validate'

  executablePath: null

  linterName: 'puppet-parse'

  errorStream: 'stderr'

  # A regex pattern used to extract information from the executable's output.
  regex: '((?<warning>Warning)|(?<error>Error)): Could not parse for environment production: (?<message>.+) at [^:]+:(?<line>\\d+)'

  constructor: (editor) ->
    super(editor)

    atom.config.observe 'linter-pupppet-parse.puppetParseArguments', =>
      @updateCmd()

    atom.config.observe 'linter-pupppet-parse.puppetParseExecutablePath', =>
      @executablePath = atom.config.get 'linter-pupppet-parse.puppetParseExecutablePath'

  updateCmd: ->
    cmd = @cmd.split ' '
    args = atom.config.get 'linter-pupppet-parse.puppetParseArguments'

    if args
      @cmd = "#{cmd[0]} #{args}"

  destroy: ->
    atom.config.unobserve 'linter-pupppet-parse.puppetParseExecutablePath'

module.exports = LinterPuppetParse
