# Committer

> A utility to generate commits.

## Usage

Notice: You need to have ruby, homebrew and bundler preinstalled before taking these steps.

1. **Make github_committer.rb executable. In committer/app directory run**

``sh
  chmod 755 github_committer.rb
  ln -s $PWD/github_committer.rb /usr/local/bin/
``

2. **Install github hub**

``sh
brew install hub
``

3. **Run bundle**

``sh
bundle
``

4. **Initialize task scheduler**

``sh
whenever -w
``
