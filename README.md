# README

##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [3.0.2]
- Rails [6.1.4]

##### 1. Check out the repository

```bash
git clone https://github.com/cristianrojasalexan/app-recorrido-prueba.git
```

##### 2. Database creation
```ruby
rails db:setup
```

##### 3. Database initialization
```ruby
rails db:migration
```

##### 4. Install gems
```ruby
bundle install
```

##### 5. Start the Rails server
```ruby
rails s
```
And now you can visit the site with the URL http://localhost:3000