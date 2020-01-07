# Gatherin-API

(WORK IN PROGRESS) _Gatherin_ is an event planning application. The main goal behind this project is to
gain familiarity with Rails modular apps.

## Modules

Gatherin consists of many modules (Rails engines or Ruby gems). This design is inspired by [The Modular Monolith Rails Architecture](https://medium.com/@dan_manges/the-modular-monolith-rails-architecture-fb1023826fc4)

# Core
Gatherin Core. Holds basic models and shared logic.

# Auth
Holds Gatherin authentication and authorization logic. It uses Devise and Doorkeeper.

# Admin
Gatherin adminstration module. Uses session based authentication for now. To be updated to be API-only with
React-Admin as a frontend.

## LICENSE

MIT.