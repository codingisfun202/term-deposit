require 'minitest/autorun'
require_relative '../lib/my_project'

class TestTermDeposit < Minitest::Test
  def setup
    @my_class = TermDeposit.new
  end

end