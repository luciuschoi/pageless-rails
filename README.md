# Pageless::Rails

This gem was built for the easy installation of Pageless jquery plugin in Rails projects. Finally, an image (load.gif) and a javascript file (jquery.pageless.js) was packaged into a gem.

## Installation

Add this line to your application's Gemfile:

    gem 'pageless-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pageless-rails

## Usage

in Gemfile,

```
gem 'will_paginate'
gem 'pageless-rails', github: 'rorlab/pageless-rails'
```

in app/helpers/application_helper.rb,

```
def pageless(total_pages, url=nil, container=nil)
  opts = {
      :totalPages => total_pages,
      :url        => url,
      :loaderMsg  => 'Loading more pages...',
      :loaderImage => image_path('load.gif')
  }

  container && opts[:container] ||= container

  javascript_tag("$('#results').pageless(#{opts.to_json});")
end
```

in a view template file,

```
<div id="results">
  <%= render @posts %>
</div>
<%= will_paginate @posts %>
<%= pageless(@posts.total_pages, posts_path, '#results') %>
```

That't it.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
