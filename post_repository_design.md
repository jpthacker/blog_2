# PostRepository Design

## The Repository Class
```ruby
post_repository = PostRepository.new 

posts = post_repository.find_by_tag('coding')

# The array `posts` should contain the following Post objects:
#
#  * 1	How to use Git
#  * 2	Ruby classes
#  * 3	Using IRB
#  * 7  SQL basics

# i.e.

posts[0].id # => '1'
posts[2].id # => '3'
posts[0].title # => 'How to use Git'
posts[3].title # => 'SQL basics'
```

| Method      |Job| Arguments | SQL query                                     | Returns  |
| ----------- |----|-----------| ----------------------------------------------|----------|
| `find_by_tag` |Find all posts for the given tag| A tag (string) | `SELECT ... JOIN ` | Array of `Post` |