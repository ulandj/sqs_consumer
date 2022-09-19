# frozen_string_literal: true


require_relative 'aws/rails/sqs_consumer/configuration'
require_relative 'aws/rails/sqs_consumer/executor'
require_relative 'aws/rails/sqs_consumer/job_runner'

require_relative 'active_job/queue_adapters/amazon_sqs_consumer_adapter'
require_relative 'active_job/queue_adapters/amazon_sqs_consumer_async_adapter'

module Aws
  module Rails
    VERSION = File.read(File.expand_path('../VERSION', __dir__)).strip
  end
end
