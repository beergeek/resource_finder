#!/opt/puppetlabs/puppet/bin/ruby

require 'puppet'
require 'json'

begin
  Puppet.initialize_settings
  params = JSON.parse(STDIN.read)
  _results = Puppet::Resource.indirection.search(params['type'])
  puts _results.to_json
  exit 0
rescue => e
    raise "Could not discover resources: #{e.to_s}"
end
