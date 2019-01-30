##
##
##



##_META
##  refs:
##    - https://tecadmin.net/install-ruby-latest-stable-centos/
##



## <JINJA>
{%- from tpldir ~ '/map.jinja' import var_dct %}
## </JINJA>



# notes on Implementation Status
{#
salt.states.gpg.present(name, keys=None, user=None, keyserver=None, gnupghome=None, trust=None, **kwargs)

    Ensure GPG public key is present in keychain

    name
        The unique name or keyid for the GPG public key.
    keys
        The keyId or keyIds to add to the GPG keychain.
    user
        Add GPG keys to the specified user's keychain
    keyserver
        The keyserver to retrieve the keys from.
    gnupghome
        Override GNUPG Home directory
    trust
        Trust level for the key in the keychain, ignored by default. Valid trust levels: expired, unknown, not_trusted, marginally, fully, ultimately
#}



#
"63BF79B6-1423-4457-9C44-22435EE0F7A7":
  gpg.present:
    - keyserver: https://rvm.io/mpapis.asc
    - keys: D39DC0E3
    - gnupghome: /home/fluentd/.gnupg



#
ruby-2.4.0:
  rvm.installed:
    - default: True
    - user: root



## EOF
