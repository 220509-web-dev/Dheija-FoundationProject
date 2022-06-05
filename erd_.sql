--establish a 'namespace' for related DB entities to exist within

create schema fashionista_app;

--convenience command that will help us to reference the schema created above 

set search_path to fashionista_app;

create table user_roles (
    id       int generated always as identity primary key,
    name     varchar unique not null 
);

create table app_users (
    id             int generated always as identity primary key,
    first_name     varchar unique not null,
    last_name      varchar unique not null,
    email          varchar unique not null,
    username       varchar unique not null check (length(username) >=5),
    password       varchar unique not null check (length(password) >=7),
    role_id        int references user_roles(id) 
);

create table categories (
    id             int generated always as identity primary key,
    name           varchar unique not null 
);

create table pieces (
    id              int generated always as identity primary key,
    creator_id      int references app_users(id),
    category_id     int references categories(id),
    tops            varchar not null,
    pants           varchar not null,
    dresses         varchar not null,
    shoes           varchar not null
);

create table closets (
    id              int generated always as identity primary key,
    name            varchar not null,
    owner_id        int references app_users(id)
);

