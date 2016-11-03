class HomeController < ApplicationController

  def index
  	@jobs = Job.all
  	@job_rowspans = Job.calc_job_rowspans
  end

end