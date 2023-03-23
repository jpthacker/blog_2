# TagRepository Design

## The Repository Class
```ruby
tag_repository = TagRepository.new 

tags = tag_repository.find_by_post(1)
tags[0].id # => '1'
tags[0].title # => 'coding'

tags = tag_repository.find_by_post(2)
tags[0].id # => '1'
tags[0].title # => 'coding'
tags[1].id # => '4'
tags[1].title # => 'ruby'

tags = tag_repository.find_by_post(7)
tags[0].id # => '5'
tags[0].title # => 'sql'
```