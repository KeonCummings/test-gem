# Test API Gem LFO
## Dependencies
*ruby 2.2.1p85
##Setup
1. ###Load Gem Locally
  1. gem build leapAPI.gemspec
2. ###I nstall Gem Locally
  1. gem install leapfrogTest
3. ### Run in IRB
  1. require 'leapApi'
  2. LeapApi.new("http://not_real.com/customer_scoring?income=50000&zipcode=60201&age=35")
4. ### Run Test in Bash 
  1. rake test
