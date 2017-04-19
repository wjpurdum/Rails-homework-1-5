$ git init
Reinitialized existing Git repository in /Users/whitneypurdum/Documents/wdi/homework/blog/.git/
  Tue Apr 18 16:49:53 ~/Documents/wdi/homework/blog (master #)
$ bin/rails server
=> Booting Puma
=> Rails 5.0.2 application starting in development on http://localhost:3000
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.8.2 (ruby 2.4.0-p0), codename: Sassy Salamander
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://localhost:3000
Use Ctrl-C to stop
Started GET "/" for ::1 at 2017-04-18 16:56:37 -0400
Processing by WelcomeController#index as HTML
  Rendering welcome/index.html.erb within layouts/application
  Rendered welcome/index.html.erb within layouts/application (2.4ms)
Completed 200 OK in 1915ms (Views: 1887.0ms | ActiveRecord: 0.0ms)


^CExiting
  Tue Apr 18 21:46:59 ~/Documents/wdi/homework/blog (master #)
$ bin/rails routes
       Prefix Verb   URI Pattern                  Controller#Action
welcome_index GET    /welcome/index(.:format)     welcome#index
         root GET    /                            welcome#index
     articles GET    /articles(.:format)          articles#index
              POST   /articles(.:format)          articles#create
  new_article GET    /articles/new(.:format)      articles#new
 edit_article GET    /articles/:id/edit(.:format) articles#edit
      article GET    /articles/:id(.:format)      articles#show
              PATCH  /articles/:id(.:format)      articles#update
              PUT    /articles/:id(.:format)      articles#update
              DELETE /articles/:id(.:format)      articles#destroy
              GET    /                            welcome#index
  Tue Apr 18 21:49:07 ~/Documents/wdi/homework/blog (master #)
$ bin/rails generate controller Articles
Running via Spring preloader in process 95811
      create  app/controllers/articles_controller.rb
      invoke  erb
      create    app/views/articles
      invoke  test_unit
      create    test/controllers/articles_controller_test.rb
      invoke  helper
      create    app/helpers/articles_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/articles.coffee
      invoke    scss
      create      app/assets/stylesheets/articles.scss
  Tue Apr 18 21:50:06 ~/Documents/wdi/homework/blog (master #)
$ bin/rails server
=> Booting Puma
=> Rails 5.0.2 application starting in development on http://localhost:3000
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.8.2 (ruby 2.4.0-p0), codename: Sassy Salamander
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://localhost:3000
Use Ctrl-C to stop
Started GET "/articles/new" for ::1 at 2017-04-18 21:56:25 -0400
Processing by ArticlesController#new as HTML
  Rendering articles/new.html.erb within layouts/application
  Rendered articles/new.html.erb within layouts/application (14.9ms)
Completed 200 OK in 586ms (Views: 560.3ms | ActiveRecord: 0.0ms)


Started GET "/articles/new" for ::1 at 2017-04-18 21:57:15 -0400
Processing by ArticlesController#new as HTML
  Rendering articles/new.html.erb within layouts/application
  Rendered articles/new.html.erb within layouts/application (102.6ms)
Completed 200 OK in 127ms (Views: 125.1ms | ActiveRecord: 0.0ms)


Started GET "/articles/new" for ::1 at 2017-04-18 22:01:15 -0400
Processing by ArticlesController#new as HTML
  Rendering articles/new.html.erb within layouts/application
  Rendered articles/new.html.erb within layouts/application (1.5ms)
Completed 200 OK in 27ms (Views: 25.2ms | ActiveRecord: 0.0ms)


Started POST "/articles" for ::1 at 2017-04-18 22:01:20 -0400
Processing by ArticlesController#create as HTML
  Parameters: {"utf8"=>"✓", "authenticity_token"=>"dP3InICk+mPn62ZP8Peq+WAJ9bhfszz+TsH85/FRwLt2WcccjClumaZ7rbXR0AM38YaIjZXckRuKuQA6r2jacQ==", "article"=>{"title"=>"Hello", "text"=>"text"}, "commit"=>"Save Article"}
  Rendering text template
  Rendered text template (0.0ms)
Completed 200 OK in 17ms (Views: 16.8ms | ActiveRecord: 0.0ms)


^CExiting
  Tue Apr 18 22:03:58 ~/Documents/wdi/homework/blog (master #)
$ bin/rails generate model Article title:string text:text
Running via Spring preloader in process 96134
      invoke  active_record
      create    db/migrate/20170419020401_create_articles.rb
      create    app/models/article.rb
      invoke    test_unit
      create      test/models/article_test.rb
      create      test/fixtures/articles.yml
  Tue Apr 18 22:04:01 ~/Documents/wdi/homework/blog (master #)
$ bin/rails db:migrate
== 20170419020401 CreateArticles: migrating ===================================
-- create_table(:articles)
   -> 0.0960s
== 20170419020401 CreateArticles: migrated (0.0961s) ==========================

  Tue Apr 18 22:07:55 ~/Documents/wdi/homework/blog (master #)
$ bin/rails server
=> Booting Puma
=> Rails 5.0.2 application starting in development on http://localhost:3000
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.8.2 (ruby 2.4.0-p0), codename: Sassy Salamander
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://localhost:3000
Use Ctrl-C to stop
Started GET "/articles" for ::1 at 2017-04-18 22:16:27 -0400
  ActiveRecord::SchemaMigration Load (0.7ms)  SELECT "schema_migrations".* FROM "schema_migrations"

AbstractController::ActionNotFound (The action 'index' could not be found for ArticlesController):

actionpack (5.0.2) lib/abstract_controller/base.rb:121:in `process'
actionview (5.0.2) lib/action_view/rendering.rb:30:in `process'
actionpack (5.0.2) lib/action_controller/metal.rb:190:in `dispatch'
actionpack (5.0.2) lib/action_controller/metal.rb:262:in `dispatch'
actionpack (5.0.2) lib/action_dispatch/routing/route_set.rb:50:in `dispatch'
actionpack (5.0.2) lib/action_dispatch/routing/route_set.rb:32:in `serve'
actionpack (5.0.2) lib/action_dispatch/journey/router.rb:39:in `block in serve'
actionpack (5.0.2) lib/action_dispatch/journey/router.rb:26:in `each'
actionpack (5.0.2) lib/action_dispatch/journey/router.rb:26:in `serve'
actionpack (5.0.2) lib/action_dispatch/routing/route_set.rb:725:in `call'
rack (2.0.1) lib/rack/etag.rb:25:in `call'
rack (2.0.1) lib/rack/conditional_get.rb:25:in `call'
rack (2.0.1) lib/rack/head.rb:12:in `call'
rack (2.0.1) lib/rack/session/abstract/id.rb:222:in `context'
rack (2.0.1) lib/rack/session/abstract/id.rb:216:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/cookies.rb:613:in `call'
activerecord (5.0.2) lib/active_record/migration.rb:553:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/callbacks.rb:38:in `block in call'
activesupport (5.0.2) lib/active_support/callbacks.rb:97:in `__run_callbacks__'
activesupport (5.0.2) lib/active_support/callbacks.rb:750:in `_run_call_callbacks'
activesupport (5.0.2) lib/active_support/callbacks.rb:90:in `run_callbacks'
actionpack (5.0.2) lib/action_dispatch/middleware/callbacks.rb:36:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/executor.rb:12:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/remote_ip.rb:79:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/debug_exceptions.rb:49:in `call'
web-console (3.5.0) lib/web_console/middleware.rb:135:in `call_app'
web-console (3.5.0) lib/web_console/middleware.rb:28:in `block in call'
web-console (3.5.0) lib/web_console/middleware.rb:18:in `catch'
web-console (3.5.0) lib/web_console/middleware.rb:18:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/show_exceptions.rb:31:in `call'
railties (5.0.2) lib/rails/rack/logger.rb:36:in `call_app'
railties (5.0.2) lib/rails/rack/logger.rb:24:in `block in call'
activesupport (5.0.2) lib/active_support/tagged_logging.rb:69:in `block in tagged'
activesupport (5.0.2) lib/active_support/tagged_logging.rb:26:in `tagged'
activesupport (5.0.2) lib/active_support/tagged_logging.rb:69:in `tagged'
railties (5.0.2) lib/rails/rack/logger.rb:24:in `call'
sprockets-rails (3.2.0) lib/sprockets/rails/quiet_assets.rb:13:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/request_id.rb:24:in `call'
rack (2.0.1) lib/rack/method_override.rb:22:in `call'
rack (2.0.1) lib/rack/runtime.rb:22:in `call'
activesupport (5.0.2) lib/active_support/cache/strategy/local_cache_middleware.rb:28:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/executor.rb:12:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/static.rb:136:in `call'
rack (2.0.1) lib/rack/sendfile.rb:111:in `call'
railties (5.0.2) lib/rails/engine.rb:522:in `call'
puma (3.8.2) lib/puma/configuration.rb:224:in `call'
puma (3.8.2) lib/puma/server.rb:600:in `handle_request'
puma (3.8.2) lib/puma/server.rb:435:in `process_client'
puma (3.8.2) lib/puma/server.rb:299:in `block in run'
puma (3.8.2) lib/puma/thread_pool.rb:120:in `block in spawn_thread'
  Rendering /Users/whitneypurdum/.rvm/gems/ruby-2.4.0@global/gems/actionpack-5.0.2/lib/action_dispatch/middleware/templates/rescues/unknown_action.html.erb within rescues/layout
  Rendered /Users/whitneypurdum/.rvm/gems/ruby-2.4.0@global/gems/actionpack-5.0.2/lib/action_dispatch/middleware/templates/rescues/unknown_action.html.erb within rescues/layout (9.7ms)
Started GET "/articles" for ::1 at 2017-04-18 22:16:32 -0400

AbstractController::ActionNotFound (The action 'index' could not be found for ArticlesController):

actionpack (5.0.2) lib/abstract_controller/base.rb:121:in `process'
actionview (5.0.2) lib/action_view/rendering.rb:30:in `process'
actionpack (5.0.2) lib/action_controller/metal.rb:190:in `dispatch'
actionpack (5.0.2) lib/action_controller/metal.rb:262:in `dispatch'
actionpack (5.0.2) lib/action_dispatch/routing/route_set.rb:50:in `dispatch'
actionpack (5.0.2) lib/action_dispatch/routing/route_set.rb:32:in `serve'
actionpack (5.0.2) lib/action_dispatch/journey/router.rb:39:in `block in serve'
actionpack (5.0.2) lib/action_dispatch/journey/router.rb:26:in `each'
actionpack (5.0.2) lib/action_dispatch/journey/router.rb:26:in `serve'
actionpack (5.0.2) lib/action_dispatch/routing/route_set.rb:725:in `call'
rack (2.0.1) lib/rack/etag.rb:25:in `call'
rack (2.0.1) lib/rack/conditional_get.rb:25:in `call'
rack (2.0.1) lib/rack/head.rb:12:in `call'
rack (2.0.1) lib/rack/session/abstract/id.rb:222:in `context'
rack (2.0.1) lib/rack/session/abstract/id.rb:216:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/cookies.rb:613:in `call'
activerecord (5.0.2) lib/active_record/migration.rb:553:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/callbacks.rb:38:in `block in call'
activesupport (5.0.2) lib/active_support/callbacks.rb:97:in `__run_callbacks__'
activesupport (5.0.2) lib/active_support/callbacks.rb:750:in `_run_call_callbacks'
activesupport (5.0.2) lib/active_support/callbacks.rb:90:in `run_callbacks'
actionpack (5.0.2) lib/action_dispatch/middleware/callbacks.rb:36:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/executor.rb:12:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/remote_ip.rb:79:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/debug_exceptions.rb:49:in `call'
web-console (3.5.0) lib/web_console/middleware.rb:135:in `call_app'
web-console (3.5.0) lib/web_console/middleware.rb:28:in `block in call'
web-console (3.5.0) lib/web_console/middleware.rb:18:in `catch'
web-console (3.5.0) lib/web_console/middleware.rb:18:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/show_exceptions.rb:31:in `call'
railties (5.0.2) lib/rails/rack/logger.rb:36:in `call_app'
railties (5.0.2) lib/rails/rack/logger.rb:24:in `block in call'
activesupport (5.0.2) lib/active_support/tagged_logging.rb:69:in `block in tagged'
activesupport (5.0.2) lib/active_support/tagged_logging.rb:26:in `tagged'
activesupport (5.0.2) lib/active_support/tagged_logging.rb:69:in `tagged'
railties (5.0.2) lib/rails/rack/logger.rb:24:in `call'
sprockets-rails (3.2.0) lib/sprockets/rails/quiet_assets.rb:13:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/request_id.rb:24:in `call'
rack (2.0.1) lib/rack/method_override.rb:22:in `call'
rack (2.0.1) lib/rack/runtime.rb:22:in `call'
activesupport (5.0.2) lib/active_support/cache/strategy/local_cache_middleware.rb:28:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/executor.rb:12:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/static.rb:136:in `call'
rack (2.0.1) lib/rack/sendfile.rb:111:in `call'
railties (5.0.2) lib/rails/engine.rb:522:in `call'
puma (3.8.2) lib/puma/configuration.rb:224:in `call'
puma (3.8.2) lib/puma/server.rb:600:in `handle_request'
puma (3.8.2) lib/puma/server.rb:435:in `process_client'
puma (3.8.2) lib/puma/server.rb:299:in `block in run'
puma (3.8.2) lib/puma/thread_pool.rb:120:in `block in spawn_thread'
  Rendering /Users/whitneypurdum/.rvm/gems/ruby-2.4.0@global/gems/actionpack-5.0.2/lib/action_dispatch/middleware/templates/rescues/unknown_action.html.erb within rescues/layout
  Rendered /Users/whitneypurdum/.rvm/gems/ruby-2.4.0@global/gems/actionpack-5.0.2/lib/action_dispatch/middleware/templates/rescues/unknown_action.html.erb within rescues/layout (0.5ms)
Started GET "/articles" for ::1 at 2017-04-18 22:19:00 -0400

AbstractController::ActionNotFound (The action 'index' could not be found for ArticlesController):

actionpack (5.0.2) lib/abstract_controller/base.rb:121:in `process'
actionview (5.0.2) lib/action_view/rendering.rb:30:in `process'
actionpack (5.0.2) lib/action_controller/metal.rb:190:in `dispatch'
actionpack (5.0.2) lib/action_controller/metal.rb:262:in `dispatch'
actionpack (5.0.2) lib/action_dispatch/routing/route_set.rb:50:in `dispatch'
actionpack (5.0.2) lib/action_dispatch/routing/route_set.rb:32:in `serve'
actionpack (5.0.2) lib/action_dispatch/journey/router.rb:39:in `block in serve'
actionpack (5.0.2) lib/action_dispatch/journey/router.rb:26:in `each'
actionpack (5.0.2) lib/action_dispatch/journey/router.rb:26:in `serve'
actionpack (5.0.2) lib/action_dispatch/routing/route_set.rb:725:in `call'
rack (2.0.1) lib/rack/etag.rb:25:in `call'
rack (2.0.1) lib/rack/conditional_get.rb:25:in `call'
rack (2.0.1) lib/rack/head.rb:12:in `call'
rack (2.0.1) lib/rack/session/abstract/id.rb:222:in `context'
rack (2.0.1) lib/rack/session/abstract/id.rb:216:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/cookies.rb:613:in `call'
activerecord (5.0.2) lib/active_record/migration.rb:553:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/callbacks.rb:38:in `block in call'
activesupport (5.0.2) lib/active_support/callbacks.rb:97:in `__run_callbacks__'
activesupport (5.0.2) lib/active_support/callbacks.rb:750:in `_run_call_callbacks'
activesupport (5.0.2) lib/active_support/callbacks.rb:90:in `run_callbacks'
actionpack (5.0.2) lib/action_dispatch/middleware/callbacks.rb:36:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/executor.rb:12:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/remote_ip.rb:79:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/debug_exceptions.rb:49:in `call'
web-console (3.5.0) lib/web_console/middleware.rb:135:in `call_app'
web-console (3.5.0) lib/web_console/middleware.rb:28:in `block in call'
web-console (3.5.0) lib/web_console/middleware.rb:18:in `catch'
web-console (3.5.0) lib/web_console/middleware.rb:18:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/show_exceptions.rb:31:in `call'
railties (5.0.2) lib/rails/rack/logger.rb:36:in `call_app'
railties (5.0.2) lib/rails/rack/logger.rb:24:in `block in call'
activesupport (5.0.2) lib/active_support/tagged_logging.rb:69:in `block in tagged'
activesupport (5.0.2) lib/active_support/tagged_logging.rb:26:in `tagged'
activesupport (5.0.2) lib/active_support/tagged_logging.rb:69:in `tagged'
railties (5.0.2) lib/rails/rack/logger.rb:24:in `call'
sprockets-rails (3.2.0) lib/sprockets/rails/quiet_assets.rb:13:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/request_id.rb:24:in `call'
rack (2.0.1) lib/rack/method_override.rb:22:in `call'
rack (2.0.1) lib/rack/runtime.rb:22:in `call'
activesupport (5.0.2) lib/active_support/cache/strategy/local_cache_middleware.rb:28:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/executor.rb:12:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/static.rb:136:in `call'
rack (2.0.1) lib/rack/sendfile.rb:111:in `call'
railties (5.0.2) lib/rails/engine.rb:522:in `call'
puma (3.8.2) lib/puma/configuration.rb:224:in `call'
puma (3.8.2) lib/puma/server.rb:600:in `handle_request'
puma (3.8.2) lib/puma/server.rb:435:in `process_client'
puma (3.8.2) lib/puma/server.rb:299:in `block in run'
puma (3.8.2) lib/puma/thread_pool.rb:120:in `block in spawn_thread'
  Rendering /Users/whitneypurdum/.rvm/gems/ruby-2.4.0@global/gems/actionpack-5.0.2/lib/action_dispatch/middleware/templates/rescues/unknown_action.html.erb within rescues/layout
  Rendered /Users/whitneypurdum/.rvm/gems/ruby-2.4.0@global/gems/actionpack-5.0.2/lib/action_dispatch/middleware/templates/rescues/unknown_action.html.erb within rescues/layout (0.5ms)
Started GET "/articles" for ::1 at 2017-04-18 22:19:02 -0400

AbstractController::ActionNotFound (The action 'index' could not be found for ArticlesController):

actionpack (5.0.2) lib/abstract_controller/base.rb:121:in `process'
actionview (5.0.2) lib/action_view/rendering.rb:30:in `process'
actionpack (5.0.2) lib/action_controller/metal.rb:190:in `dispatch'
actionpack (5.0.2) lib/action_controller/metal.rb:262:in `dispatch'
actionpack (5.0.2) lib/action_dispatch/routing/route_set.rb:50:in `dispatch'
actionpack (5.0.2) lib/action_dispatch/routing/route_set.rb:32:in `serve'
actionpack (5.0.2) lib/action_dispatch/journey/router.rb:39:in `block in serve'
actionpack (5.0.2) lib/action_dispatch/journey/router.rb:26:in `each'
actionpack (5.0.2) lib/action_dispatch/journey/router.rb:26:in `serve'
actionpack (5.0.2) lib/action_dispatch/routing/route_set.rb:725:in `call'
rack (2.0.1) lib/rack/etag.rb:25:in `call'
rack (2.0.1) lib/rack/conditional_get.rb:25:in `call'
rack (2.0.1) lib/rack/head.rb:12:in `call'
rack (2.0.1) lib/rack/session/abstract/id.rb:222:in `context'
rack (2.0.1) lib/rack/session/abstract/id.rb:216:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/cookies.rb:613:in `call'
activerecord (5.0.2) lib/active_record/migration.rb:553:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/callbacks.rb:38:in `block in call'
activesupport (5.0.2) lib/active_support/callbacks.rb:97:in `__run_callbacks__'
activesupport (5.0.2) lib/active_support/callbacks.rb:750:in `_run_call_callbacks'
activesupport (5.0.2) lib/active_support/callbacks.rb:90:in `run_callbacks'
actionpack (5.0.2) lib/action_dispatch/middleware/callbacks.rb:36:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/executor.rb:12:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/remote_ip.rb:79:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/debug_exceptions.rb:49:in `call'
web-console (3.5.0) lib/web_console/middleware.rb:135:in `call_app'
web-console (3.5.0) lib/web_console/middleware.rb:28:in `block in call'
web-console (3.5.0) lib/web_console/middleware.rb:18:in `catch'
web-console (3.5.0) lib/web_console/middleware.rb:18:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/show_exceptions.rb:31:in `call'
railties (5.0.2) lib/rails/rack/logger.rb:36:in `call_app'
railties (5.0.2) lib/rails/rack/logger.rb:24:in `block in call'
activesupport (5.0.2) lib/active_support/tagged_logging.rb:69:in `block in tagged'
activesupport (5.0.2) lib/active_support/tagged_logging.rb:26:in `tagged'
activesupport (5.0.2) lib/active_support/tagged_logging.rb:69:in `tagged'
railties (5.0.2) lib/rails/rack/logger.rb:24:in `call'
sprockets-rails (3.2.0) lib/sprockets/rails/quiet_assets.rb:13:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/request_id.rb:24:in `call'
rack (2.0.1) lib/rack/method_override.rb:22:in `call'
rack (2.0.1) lib/rack/runtime.rb:22:in `call'
activesupport (5.0.2) lib/active_support/cache/strategy/local_cache_middleware.rb:28:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/executor.rb:12:in `call'
actionpack (5.0.2) lib/action_dispatch/middleware/static.rb:136:in `call'
rack (2.0.1) lib/rack/sendfile.rb:111:in `call'
railties (5.0.2) lib/rails/engine.rb:522:in `call'
puma (3.8.2) lib/puma/configuration.rb:224:in `call'
puma (3.8.2) lib/puma/server.rb:600:in `handle_request'
puma (3.8.2) lib/puma/server.rb:435:in `process_client'
puma (3.8.2) lib/puma/server.rb:299:in `block in run'
puma (3.8.2) lib/puma/thread_pool.rb:120:in `block in spawn_thread'
  Rendering /Users/whitneypurdum/.rvm/gems/ruby-2.4.0@global/gems/actionpack-5.0.2/lib/action_dispatch/middleware/templates/rescues/unknown_action.html.erb within rescues/layout
  Rendered /Users/whitneypurdum/.rvm/gems/ruby-2.4.0@global/gems/actionpack-5.0.2/lib/action_dispatch/middleware/templates/rescues/unknown_action.html.erb within rescues/layout (0.6ms)
Started GET "/" for ::1 at 2017-04-18 22:19:06 -0400
Processing by WelcomeController#index as HTML
  Rendering welcome/index.html.erb within layouts/application
  Rendered welcome/index.html.erb within layouts/application (0.5ms)
Completed 200 OK in 416ms (Views: 389.6ms | ActiveRecord: 0.0ms)


Started GET "/articles/new" for ::1 at 2017-04-18 22:19:13 -0400
Processing by ArticlesController#new as HTML
  Rendering articles/new.html.erb within layouts/application
  Rendered articles/new.html.erb within layouts/application (82.8ms)
Completed 200 OK in 108ms (Views: 105.7ms | ActiveRecord: 0.0ms)


Started POST "/articles" for ::1 at 2017-04-18 22:19:20 -0400
Processing by ArticlesController#create as HTML
  Parameters: {"utf8"=>"✓", "authenticity_token"=>"IOQrPEwRRgdhkn24TO2MxqfcwR/e1pDnKXtUn0+1cKsiQCS8QJzS/SACtkJtyiUINlO8KhS5PQLtA6hCEYxqYQ==", "article"=>{"title"=>"hello", "text"=>"Hello"}, "commit"=>"Save Article"}
   (0.2ms)  BEGIN
  SQL (0.9ms)  INSERT INTO "articles" ("title", "text", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["title", "hello"], ["text", "Hello"], ["created_at", 2017-04-19 02:19:20 UTC], ["updated_at", 2017-04-19 02:19:20 UTC]]
   (0.6ms)  COMMIT
Redirected to http://localhost:3000/articles/1
Completed 302 Found in 62ms (ActiveRecord: 10.8ms)


Started GET "/articles/1" for ::1 at 2017-04-18 22:19:20 -0400
Processing by ArticlesController#show as HTML
  Parameters: {"id"=>"1"}
  Article Load (10.4ms)  SELECT  "articles".* FROM "articles" WHERE "articles"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
  Rendering articles/show.html.erb within layouts/application
  Rendered articles/show.html.erb within layouts/application (0.5ms)
Completed 200 OK in 68ms (Views: 38.2ms | ActiveRecord: 10.7ms)


Started GET "/articles" for ::1 at 2017-04-18 22:21:21 -0400
Processing by ArticlesController#index as HTML
  Rendering articles/index.html.erb within layouts/application
  Article Load (0.4ms)  SELECT "articles".* FROM "articles"
  Rendered articles/index.html.erb within layouts/application (15.2ms)
Completed 200 OK in 52ms (Views: 31.2ms | ActiveRecord: 7.6ms)


^CExiting
  Tue Apr 18 22:28:55 ~/Documents/wdi/homework/blog (master #)
$
