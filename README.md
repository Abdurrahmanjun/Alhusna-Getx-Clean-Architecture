## Todo
* [ ] Add Introductions Page
* [ ] Add Dashboard bottomview page
* [ ] Add Login Page using google auth

## Upcoming Features
- Integrating Unit Test.
- Create an easy to use API provider with [GetConnect](https://github.com/jonataslaw/getx#getconnect).

# flutter-getx-clean-architecture
A Flutter Clean Architecture Using [GetX](https://github.com/jonataslaw/getx).

This repo is forked from: https://github.com/phamdinhduc795397/flutter-getx-clean-architecture

## Work Flow
![alt text](/assets/Clean-Architecture-Flutter-Diagram.png?raw=true)

## Project Structure
```
|-- lib
    |-- main.dart
    |-- app
        |-- core
            |-- usecases
        |-- config
            |-- app_constants.dart
            |-- app_colors.dart
        |   -- app_text_styles.dart
        |-- services
        |-- util
        |-- types
        |-- extensitons
    |-- data
        |-- models
        |-- repositories
        |-- providers
            |-- database
            |-- network
                |-- apis
                |-- api_endpoints.dart
                |-- api_provider.dart
                |-- api_representable.dart
    |-- domain
        |-- entities
        |-- repositories
        |-- usecases
    |-- presentation
        |-- controllers
        |-- pages
        |-- views
        |-- app.dart
```
