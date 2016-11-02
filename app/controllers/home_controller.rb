class HomeController < ApplicationController

  def index
  	@jobs = Job.all
  	@counts = Job.skills_per_job
  end

end