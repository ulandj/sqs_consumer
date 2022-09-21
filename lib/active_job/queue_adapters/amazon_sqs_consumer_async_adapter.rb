# frozen_string_literal: true

require 'aws-sdk-sqs'
require 'concurrent'

module ActiveJob
  module QueueAdapters

    # == Async adapter for Amazon SQS ActiveJob
    #
    # This adapter queues jobs asynchronously (ie non-blocking).  Error handler can be configured
    # with +Aws::Rails::SqsActiveJob.config.async_queue_error_handler+.
    #
    # To use this adapter, set up as:
    #
    # config.active_job.queue_adapter = :amazon_sqs_async
    class AmazonSqsConsumerAsyncAdapter < AmazonSqsConsumerAdapter
    end
  end
end
