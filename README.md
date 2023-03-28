# A VoteTracker+ Mock US Election Repo

This is a work in progress.

This repository represents the current thoughts on how to configure an election for VoteTracker+.  See the [VoteTrackerPlus](https://github.com/TrustTheVote-Project/VoteTrackerPlus) repository for more information.  The VoteTracker+ repo is included as a git submodule by this repo.

## How to clone this and the VoteTracker+ repos and setup up a VTP demo

Make sure there is a compatible python environment - any reasonable python framework can be used.  See [VoteTrackerPlus/src/vtp/README.md](https://github.com/TrustTheVote-Project/VoteTrackerPlus/tree/master/src/vtp) for creating either a conda or poetry environment.

All the necessary git repos can be cloned via the following playbook which leverages poetry to manage the python environment.   See [VoteTrackerPlus/_tools/build/README.md](https://github.com/TrustTheVote-Project/VoteTrackerPlus/tree/main/_tools/build)
for more information on installing poetry.


```bash
# Clone the VTP-dev-env repo, not this repo (https example)
$ git clone https://github.com/TrustTheVote-Project/VTP-dev-env.git

# Run the makefile there, which will pull this and the other repos of interest
# as git submodules of the VTP-dev-env repo.
$ cd VTP-dev-env
$ make main

# Using poetry perform a local install of VoteTracker+
$ cd VoteTrackerPlus
$ make poetry-build

# To setup a mock demo election using this (ElectionData) repo:
$ cd ../VTP-mock-election.US.11
$ setup-vtp-demo
```

(the [VTP-dev-env](https://github.com/TrustTheVote-Project/VTP-dev-env) repo holds the VTP development environment)
