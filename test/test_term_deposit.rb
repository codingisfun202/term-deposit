require 'minitest/autorun'
require_relative '../lib/term_deposit'

class TermDepositTest < Minitest::Test
  def setup
    # Initialize objects for different test scenarios
    @term_deposit_monthly = TermDeposit.new(start_amount:10000.0, interest_rate: 1.10, term_years: 3, frequency: 'monthly')
    @term_deposit_quarterly = TermDeposit.new(start_amount:10000.0, interest_rate: 1.10, term_years: 3, frequency: 'quarterly')
    @term_deposit_yearly = TermDeposit.new(start_amount:10000.0, interest_rate: 1.10, term_years: 3, frequency: 'annually')
    @term_deposit_at_maturity = TermDeposit.new(start_amount:10000.0, interest_rate: 1.10, term_years: 3, frequency: 'at maturity')

  end

  def test_calculate_final_balance_monthly
    assert_equal @term_deposit_monthly.calculate_final_balance.round, 10335
  end

  def test_calculate_final_balance_quarterly
    assert_equal @term_deposit_quarterly.calculate_final_balance.round, 10335

  end

  def test_calculate_final_balance_annually
    assert_equal @term_deposit_yearly.calculate_final_balance.round, 10334
  end

  def test_calculate_final_balance_at_maturity()
    assert_equal @term_deposit_at_maturity.calculate_final_balance.round, 10330
  end

  def test_invalid_frequency
    assert_raises(ArgumentError) {
      TermDeposit.new(10000.0, 1.10, 3, 'weekly').calculate_final_balance
    }
  end
end