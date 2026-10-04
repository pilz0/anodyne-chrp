{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/packages/
  packages = [
    pkgs.git
    pkgs.svgo # indexer.rb shells out to `svgo`
    pkgs.sqlite # sqlite3 gem + CLI for poking at the index
  ];

  # https://devenv.sh/languages/
  # 3.3 is the newest Ruby that nokogiri 1.17.x (pinned in the Gemfile) ships
  # precompiled gems for.
  languages.ruby = {
    enable = true;
    package = pkgs.ruby_3_3;
    bundler.enable = true;
  };

  # reddit.py, sider.py, bindingdb.py, build_index.py, stereoisomers.py
  languages.python = {
    enable = true;
    package = pkgs.python313.withPackages (ps: [
      ps.rdkit
      ps.requests
      ps.beautifulsoup4
    ]);
  };

  # structure.rb runs `java -jar molpic/molpic.jar`
  languages.java.enable = true;

  # https://devenv.sh/basics/
  enterShell = ''
    ruby --version
    python3 --version
    echo "Run 'bundle install' to install gems."
  '';

  # https://devenv.sh/tests/
  enterTest = ''
    ruby --version
    bundle --version
    java -version
    svgo --version
    sqlite3 --version
    python3 -c "import rdkit, requests, bs4"
  '';

  # See full reference at https://devenv.sh/reference/options/
}
