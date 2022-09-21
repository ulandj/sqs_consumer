# frozen_string_literal: true

require 'aws-sdk-sqs'

module ActiveJob
  module QueueAdapters

    class AmazonSqsConsumerAdapter; end

    # create an alias to allow `:amazon` to be used as the adapter name
    # `:amazon` is the convention used for ActionMailer and ActiveStorage
    AmazonAdapter = AmazonSqsConsumerAdapter
  end
end
