# Setup direnv

Setup [direnv](https://github.com/direnv/direnv) to switch
environment easily.

## Installation
See [doc](https://github.com/direnv/direnv#install)

## Settings

Add below to your rcfile.

```
export KERL_BASE_DIR=$HOME/.kerl
export KERL_DEFAULT_INSTALL_DIR=$KERL_BASE_DIR/installs
export KERL_BUILD_BACKEND=git
```

Add below to your ~/.direnvrc

```
activate_erlang () {
  ERLANG_VERSION=$1

  if has kerl; then
    ERLANG_INSTALLATION=$(kerl list installations | grep "^$ERLANG_VERSION " | cut -d' ' -f2)
    if [ -x "${ERLANG_INSTALLATION}/activate" ] ; then
        $ERLANG_INSTALLATION/activate
    else
        echo "Erlang $ERLANG_VERSION not available; using default."
    fi
  else
    echo "kerl isn't available; Use default Erlang"
    . $KERL_DEFAULT_INSTALL_DIR/$1/activate
  fi
}

activate_elixir () {
  ELIXIR_VERSION=$1

  if has kiex; then
    if kiex list|grep -q ${ELIXIR_VERSION} ; then
      kiex use ${ELIXIR_VERSION}
    else
      echo "Elixir ${ELIXIR_VERSION} not available; using default."
    fi
  else
    echo "kiex is not available; Use default Elixir"
  fi
}

```

Change permission for executable:
Eg: for Erlang 20.1

```
sudo chmod 755 ~/${KERL_DEFAULT_INSTALL_DIR}/20.1/activate
```

Put the .envrc file to your project dir

```
activate_erlang 20.1
```
