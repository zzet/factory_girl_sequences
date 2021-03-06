Feature: automatically register sequences
  Background:
    When I successfully run `bundle exec rails new testapp`
  And I cd to "testapp"
  And I add "factory_girl_rails" as a dependency
  And I add "factory_girl_sequences" from this project as a dependency
  When I successfully run `bundle install`
  And I write to "db/migrate/1_create_users.rb" with:
    """
    class CreateUsers < ActiveRecord::Migration
      def self.up
        create_table :users do |t|
          t.string :name
        end
      end
    end
    """
  When I successfully run `bundle exec rake db:migrate --trace`
  And I write to "app/models/user.rb" with:
    """
    class User < ActiveRecord::Base
    end
    """

  @disable-bundler
  Scenario: generate a rails 3 application and use factory definitions
  When I write to "test/factories.rb" with:
    """
    FactoryGirl.define do
      factory :user do
        name
      end
    end
    """
  When I write to "test/unit/user_test.rb" with:
    """
    require 'test_helper'

    class UserTest < ActiveSupport::TestCase
      test "use sequence" do
        user = FactoryGirl.create(:user)
        assert user.name
      end
    end
    """
  When I successfully run `bundle exec rake test --trace`
  Then the output should contain "1 tests, 1 assertions, 0 failures, 0 errors"