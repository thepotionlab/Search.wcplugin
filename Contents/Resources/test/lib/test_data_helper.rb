require 'Shellwords'

require_relative 'test_script_constants' # Get the TEST_DATA_DIRECTORY

module Repla
  module Search
    module Test
      # Test data
      module TestData
        TEST_SCRIPTS_DIRECTORY = File.join(__dir__,
                                           '..',
                                           'scripts')

        def self.test_data_directory
          TEST_DATA_DIRECTORY
        end

        def self.test_search_term
          SEARCH_TERM
        end

        TEST_SEARCH_OUTPUT_FILE = File.join(TEST_SCRIPTS_DIRECTORY,
                                            'test_search_output.rb')
        def self.test_search_output
          command = Shellwords.escape(TEST_SEARCH_OUTPUT_FILE)
          result = `#{command}`
          result
        end
        TEST_DATA_JSON_FILE = File.join(TEST_SCRIPTS_DIRECTORY,
                                        'test_data_json.rb')
        def self.test_data_json
          command = Shellwords.escape(TEST_DATA_JSON_FILE)
          result = `#{command}`
          result
        end
      end
    end
  end
end
