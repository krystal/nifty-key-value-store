# The Nifty Key Value Store

If you want to create a quick key/value store in your application where the values relate to an
existing model, this is very helpful.

You'll need to create the database table and then, once added, you can specify what objects
you want to store.

```
$ rails generate nifty:key_value_store:migration
$ rake db:migrate
```

```ruby
class Person < ActiveRecord::Base
  key_value_store :settings
  key_value_store :other_settings
end

person = Person.new
person.settings             = {:colour => 'red', :fruit => 'apple'}
person.other_settings_json  = "{"hello":"world"}"
person.save

person = Person.find(person.id)
person.settings         #=> {'colour' => 'red', 'fruit' => 'apple'}
person.settings_json    #=> "{'color':'red', 'fruit':'apple'}"
```

A few points to note about this:

* All values are stored as strings in the database
* All keys are stored as strings and returned as strings in their hash
