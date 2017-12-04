# HelloPhoenix

Show how easily use poenix on your environment.
I'll tell you the difference with ruby.

You can confirm the state with feature/hello-phoenix-branch

## Precondition
- You should install Elixir first :see [doc](./Setup.md)

## Setup

### Install global dependencies

```
mix local.hex
mix local.rebar
```

- Mix is a task runner like rake.
- Hex is a package manager like bundler.
- Rebar is a Erlang package builder

### Install phoenix

```
mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
```

### Create a new project

```
mix phoenix.new hello_phoenix
# If you want use mysql please use below
# mix phoenix.new hello_phoenix --database mysql
```

Like a rails new something.

After the files are created, move to the project root.

```
cd hello_phoenix
```

### Install dependencies related to projects

```
mix deps.get
```

Like a `bundle install`

### Create a database

```
mix ecto.create
```

Like a `rake db:create && rake db:migrate`

### Run a server

You can run a server

```
mix phoenix.server
# You can confirm the server running
curl localhost:4000
```


You can also run your app inside IEx (Interactive Elixir) as:

```
iex -S mix phoenix.server
```

Like a rails console.
