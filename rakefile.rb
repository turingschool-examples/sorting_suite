task :default do
    FileList["./bubble/test/bubble_test.rb", "./insertion/test/insertion_test.rb", "./merge/test/merge_test.rb"].each { |file| ruby file }
end
