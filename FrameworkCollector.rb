require 'cocoapods-imy-bin'
require 'cocoapods'

def collect_framework(pod_name)
  result = system("pod bin collect #{pod_name}")
  raise "Failed to collect framework for #{pod_name}" unless result
end

begin
  collect_framework('AFNetworking')
rescue => e
  puts "Error: #{e.message}"
end
