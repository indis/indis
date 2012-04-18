Given /^a file named "([^"]*)" with contents of fixture "([^"]*)"$/ do |fn, fixture_fn|
  write_file(fn, open("features/fixtures/#{fixture_fn}").read())
end

Then /^the output should be the same as the contents of "([^\"]*)"$/ do |fixture_fn|
  actual = unescape(all_output).split("\n")
  expected = unescape(open("features/fixtures/#{fixture_fn}").read()).split("\n")
  
  actual.length.should == expected.length
  actual.length.times do |i|
    actual[i].should == expected[i]
  end
end
