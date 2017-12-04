# Setup
We use Erlang and Elixir version manager for local development.

## kerl
Erlang version manager.

### Install kerl

https://github.com/kerl/kerl#downloading

### Install Erlang

```
# For OSX User
## Openssl
brew install openssl # or upgrade openssl
echo 'export PATH="/usr/local/opt/openssl/bin:$PATH"' >> <your rc file>

## libjpeg
wget -c http://www.ijg.org/files/jpegsrc.v8d.tar.gz
tar xzf jpegsrc.v8d.tar.gz
cd jpeg-8d
./configure
make
cp ./.libs/libjpeg.8.dylib /usr/local/opt/jpeg/lib
```

```
kerl list releases
# Build latest one
# If you're OSX user you should pass --with-ssl
KERL_CONFIGURE_OPTIONS="--with-ssl=/usr/local/opt/openssl" kerl build 20.1 20.1
kerl list builds

# Install
kerl install 20.1 ~/.kerl/installs/20.1
# Activate
. ~/.kerl/installs/20.1/activate
```

#### Optional
You can force to use a specific version Erlang powerd by direnv.
See [setup direnv](./Setup_direnv.md)

## kiex
Elixir version manager.
You should install Erlang first.

### Install kiex

`\curl -sSL https://raw.githubusercontent.com/taylor/kiex/master/install | bash -s`

### Install Exixir

```
# Install latest Exixir
kiex list known
kiex install 1.5.2

# show installed Exixir versions
kiex list

# Set it as a default Exixir
kiex default 1.5.2 # or kiex use 1.5.2

# Now we can check Elixir is installed
iex -v
```
