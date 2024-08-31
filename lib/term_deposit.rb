class TermDeposit
  attr_accessor :start_amount, :interest_rate, :term_years, :frequency

  def initialize(start_amount:, interest_rate:, term_years:, frequency:)
    @start_amount = start_amount
    @interest_rate = interest_rate
    @term_years = term_years
    @frequency = frequency.downcase
  end

  def calculate_final_balance
    periods_per_year = convert_frequency(@frequency)

    interest_rate_decimal = @interest_rate / 100.0
    terms = periods_per_year * @term_years

    if @frequency == 'at maturity'
      final_balance = @start_amount * (1 + interest_rate_decimal * @term_years)
    else
      rate_per_period = interest_rate_decimal / periods_per_year
      final_balance = @start_amount * ((1 + rate_per_period) ** terms)
    end

    final_balance
  end

  private
  def convert_frequency(frequency)
    case frequency
    when 'monthly' then 12
    when 'quarterly' then 4
    when 'annually' then 1
    when 'at maturity' then 1
    else
      raise Error("Invalid interest payment frequency")
    end
  end
end