require 'childprocess'

process = ChildProcess.build('ruby', 'lib/transaction_processor.rb')
process.io.inherit!
process.start
at_exit { process.stop }
