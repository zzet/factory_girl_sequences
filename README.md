# FactoryGirlSequences [![Build Status](https://secure.travis-ci.org/akalyaev/factory_girl_sequences.png "Build Status")](http://travis-ci.org/akalyaev/factory_girl_sequences)

Collection of useful [FactoryGirl](http://github.com/thoughtbot/factory_girl)
sequences.

**Important**

This minigem provides only a basic set of standard data. If you need more complex
data in your application (e.g. US postal code or address), I recommend [Faker](http://github.com/stympy/faker).

## Installation

Add this line to your application's Gemfile:

    gem 'factory_girl_sequences', :group => :test

Or install it yourself as:

    $ gem install factory_girl_sequences

## Sequences

<table>
  <tr>
    <th>Name</th>
    <th>Aliases</th>
    <th>DataType</th>
    <th>Example</th>
  </tr>
  <tr>
    <td>integer</td>
    <td>checksum</td>
    <td>Integer</td>
    <td>1</td>
  </tr>
  <tr>
    <td>string</td>
    <td>-</td>
    <td>String</td>
    <td>string-1</td>
  </tr>
  <tr>
    <td>date</td>
    <td>-</td>
    <td>Date</td>
    <td>Sat, 20 Oct 2012</td>
  </tr>
  <tr>
    <td>datetime</td>
    <td>-</td>
    <td>Time</td>
    <td>Sat, 20 Oct 2012 16:38:59 MSK +04:00</td>
  </tr>
  <tr>
    <td>boolean</td>
    <td>-</td>
    <td>Boolean</td>
    <td>true</td>
  </tr>
  <tr>
    <td>name</td>
    <td>login, username, first_name, last_name</td>
    <td>String</td>
    <td>name-1</td>
  </tr>
  <tr>
    <td>password</td>
    <td>-</td>
    <td>String</td>
    <td>password-1</td>
  </tr>
  <tr>
    <td>email</td>
    <td>-</td>
    <td>String</td>
    <td>person1@example.com</td>
  </tr>
  <tr>
    <td>ip_address</td>
    <td>-</td>
    <td>String</td>
    <td>192.168.0.1</td>
  </tr>
  <tr>
    <td>ip_subnet</td>
    <td>-</td>
    <td>String</td>
    <td>192.168.10.0</td>
  </tr>
  <tr>
    <td>mac_address</td>
    <td>-</td>
    <td>String</td>
    <td>01:23:45:67:89:01</td>
  </tr>
  <tr>
    <td>title</td>
    <td>-</td>
    <td>String</td>
    <td>Title 1</td>
  </tr>
  <tr>
    <td>body</td>
    <td>description</td>
    <td>String</td>
    <td>body-1</td>
  </tr>
  <tr>
    <td>slug</td>
    <td>-</td>
    <td>String</td>
    <td>slug-1</td>
  </tr>
  <tr>
    <td>url</td>
    <td>-</td>
    <td>String</td>
    <td>http://example1.com</td>
  </tr>
  <tr>
    <td>domain</td>
    <td>-</td>
    <td>String</td>
    <td>example1.com</td>
  </tr>
  <tr>
    <td>subdomain</td>
    <td>-</td>
    <td>String</td>
    <td>blog1</td>
  </tr>
  <tr>
    <td>color</td>
    <td>-</td>
    <td>String</td>
    <td>333333</td>
  </tr>
</table>

## Usage

Basic example:

```ruby
FactoryGirl.generate :email
# => "person1@example.com"

FactoryGirl.generate :email
# => "person2@example.com"
```

Use them as attributes (preferable way):

```ruby
factory :user do
  email
end
```

Or in lazy attributes:

```ruby
factory :invite do
  invitee { generate(:email) }
end
```

Check out FactoryGirl's [GETTING_STARTED](http://github.com/thoughtbot/factory_girl) for more information.

## Additional notes

All sequences are free to use and
could be changed depending on your needs. Just copy the sequence in your
project's `test(spec)/factories/sequences.rb` file and modify it.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Test your changes by running `bundle exec rake cucumber` command
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
