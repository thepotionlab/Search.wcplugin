# SEARCH_TERM = "ei.*?od"
SEARCH_TERM = 'ei.*?od|<ei.*?od>|</eiusmod>'.freeze
TEST_DATA_DIRECTORY = File.join(__dir__, '..', 'data')
TEST_DATA_SEARCH_COMMAND = 'grep --recursive --line-number --only-matching '\
  '--extended-regexp'.freeze
