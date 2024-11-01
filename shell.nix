with (import <nixpkgs> {});
mkShell {
  name = "Grore Shell";

  buildInputs = [
    # Vim confiugred practically
    ((vim_configurable.override {  }).customize{
      name = "vim";
      vimrcConfig.customRC = ''
        " your custom vimrc
        set mouse=a
        set nocompatible
        colo torte
        syntax on
        set tabstop     =2
        set softtabstop =2
        set shiftwidth  =2
        set expandtab
        set autoindent
        set smartindent
        " ...
      '';
      }
    )
    # Python
    (pkgs.python311.withPackages (pyPkgs: [
    pyPkgs.pillow
    pyPkgs.pylibjpeg-libjpeg
    pyPkgs.pypdf2
    pyPkgs.python-ldap
    pyPkgs.pq
    pyPkgs.aiosasl
    pyPkgs.psycopg2
    pyPkgs.bleach
    pyPkgs.cffi
    pyPkgs.chardet
    pyPkgs.django
    pyPkgs.django-formtools
    pyPkgs.django-picklefield
    pyPkgs.django-simple-captcha
    pyPkgs.django-statici18n
    pyPkgs.django-webpack-loader
    pyPkgs.djangorestframework
    pyPkgs.future
    pyPkgs.gunicorn
    pyPkgs.markdown
    pyPkgs.openpyxl
    pyPkgs.pillow
    pyPkgs.pip
    pyPkgs.pycryptodome
    pyPkgs.pyjwt
    pyPkgs.pysaml2
    pyPkgs.python-dateutil
    pyPkgs.python-ldap
    pyPkgs.qrcode
    pyPkgs.requests
    pyPkgs.requests-oauthlib
    pyPkgs.setuptools
    pyPkgs.simplejson
    pyPkgs.python3-gnutls
    pyPkgs.pip
    pyPkgs.venvShellHook
    pyPkgs.pylibjpeg-libjpeg
    pyPkgs.pypdf2
    pyPkgs.pq
    pyPkgs.aiosasl
    pyPkgs.psycopg2
        ]))
    # Necessities
    git
    zlib
    lzlib
    gettext
    # Utilities
    openssl
    curl
    wget
    lynx
    tmux
    # Convenance
    dig
    killall
    pwgen
    # Experimentation
    docker
    docker-compose
    # sqlite
    postgresql_14
    # apparmor-bin-utils    
  ];
  shellHook = ''
    export LC_ALL="C"
    alias ll="ls -l"
    export FOO=bar
  '';
}
