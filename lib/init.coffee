module.exports =
  config:
    puppetParseArguments:
      default: ''
      title: 'Puppet Parse Arguments'
      type: 'String'
    puppetParseExecutablePath:
      default: ''
      title: 'Puppet Parse Executable Path'
      type: 'String'

  activate: ->
    console.log 'activate linter-puppet-parse'
