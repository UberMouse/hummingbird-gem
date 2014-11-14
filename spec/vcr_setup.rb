require 'vcr'

VCR.configure do |v|
  v.cassette_library_dir = 'vcr_cassettes'
  v.hook_into :webmock
end
