test = "#{__dirname}/test"
docs = "#{__dirname}/docs"

{exec, spawn} = require 'child_process'
{series, parallel} = require 'async'
inspect = require('eyes').inspector
  stream: null
  pretty: false
  styles:
    all: 'magenta'


# execute some command quietly (without stdout)
sh = (command) -> (k) -> exec command, k

# Modified from https://gist.github.com/920698
runCommand = (name, args) ->
    proc = spawn name, args
    proc.stderr.on 'data', (buffer) -> console.log buffer.toString()
    proc.stdout.on 'data', (buffer) -> console.log buffer.toString()
    proc.on 'exit', (status) -> process.exit(1) if status != 0

# shorthand to runCommand with
command = (c, cb) ->
  runCommand "sh", ["-c", c]
  cb


# Literate programming for the coffee sources.
task 'docs', "docco -- docs", ->
  series [
    sh "rm -rf #{docs}/"
    command "find lib | grep .coffee | xargs docco"
  ], (err) -> throw err if err

