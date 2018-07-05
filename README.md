# Content Management System

This is simple barebones application built with Ruby on Rails 5 to create, show, edit, and delete a users article posts. Users can also comment on articles.

## Entity Relationship Diagram

User -< Articles -< Comments

## API endpoints

| Verb   | URI Pattern            | Controller#Action  |
|--------|----------------------- |------------------  |
| POST   | `/articles`            | `articles#create`  |
| PATCH  | `/articles/:id`        | `articles#update`  |
| GET    | `/articles`            | `articles#index`   |
| GET    | `/articles/:id`        | `articles#show`    |
| DELETE | `/articles/:id`        | `articles#destroy` |
|--------|----------------------- |------------------  |
| POST   | `/comments`            | `comments#create`  |
| DELETE | `/comments/:id`        | `comments#destroy` |
