## PROBLEM 1

### Fill in function below


 Given a list of strings, and integer, i
 find all strings less then length i, then group
 and count the number of strings by their length

 example:
 strings = [ 'abc', 'defg', 'hi' ,'a', 'b', 'ze', 'ae' ]
 i = 4

 output = { 1: 2, 2: 3, 3: 1 }

def filter_and_group(strings, i)
end

## PROBLEM 2

### In what ways can we refactor this code

 `app/models/user.rb`
 ```rb
 class User < ActiveRecord::Record
 attr_accessor :first_name, :last_name
 end
 ```

 `app/views/users/show.html.erb`
 ```erb
 @user = User.find(1)
 <p> <%= @user.full_name %> </p>
 ```

 `app/views/users/other_1.html.erb`
 ```erb
 <p> <%= @user.first_nm %> <%= @user.last_nm %> </p>
 ```

 `app/views/users/other_2.html.erb`
 ```erb
 <p> <%= @user.first_nm %> <%= @user.last_nm %> </p>
 ```

 `app/views/users/other_3.html.erb`
 ```erb
 <p> <%= @user.first_nm %> <%= @user.last_nm %> </p>
 ```

## PROBLEM 3

### What are the dangers/inefficiencies of this code below, how can we fix it


 `app/models/book.rb`
 ```rb
class Book < ActiveRecord::Record
has_many :reviews
end

class Review < ActiveRecord::Record
belongs_to :user
belongs_to :book
end

class User < ActiveRecord::Record
has_many :reviews
end
```

`app/views/users/show.html.erb`
```erb
@book = Book.find(1)
@book.reviews.each do |review|
<%= review.content.html_safe %> by <%= review.user.full_name %>
end
```
