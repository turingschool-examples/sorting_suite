require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['bubble/test/*.rb']
  t.test_files = FileList['insertion/test/*.rb']
  t.test_files = FileList['merge/test/*.rb']
  t.verbose = true
end