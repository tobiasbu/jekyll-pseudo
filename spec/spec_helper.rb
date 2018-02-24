

RSpec.configure do |config|
    config.expect_with(:rspec) { |c| c.syntax = [:should, :expect] }

    config.mock_with :rspec do |mocks|
        mocks.syntax = [:should, :receive]
    end
end