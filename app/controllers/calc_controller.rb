class CalcController < ApplicationController
  def square_form
    render({:template => "omnicalc_templates/new_square_form"})
  end
  
  def square_results
    render({:template => "omnicalc_templates/square_results"})
  end

  def square_root_form
    render({:template => "omnicalc_templates/new_sqroot_form"})
  end

  def square_root_results
    render({:template => "omnicalc_templates/sqroot_results"})
  end

  def payment_form
    render({:template => "omnicalc_templates/new_payment_form"})
  end

  def payment_results
    @rate = params.fetch("user_apr").to_f/100/12
    @periods = params.fetch("user_years").to_f*12
    @numerator = @rate * params.fetch("user_pv").to_f
    @denominator = (1 - (1/(1+@rate)**@periods))

    render({:template => "omnicalc_templates/payment_results"})
  end

  def random_form
    render({:template => "omnicalc_templates/new_random_form"})
  end

  def random_results
    render({:template => "omnicalc_templates/random_results"})
  end
end
