class RandomDelayWorker
  include Sidekiq::Worker

  sidekiq_options throttle: { threshold: 10, period: 10.minutes, random_delay: 10.minutes }

  def perform(*args)
    puts args
  end
end
