# CoreNGS src

## Commit Rules:
- Do NOT commit to this repo for changes in any submodule. 
- Do NOT add pull requests for any submodule.
- Do NOT add issues relating to submodules.
- Do NOT add new submodules without permission.
- Do NOT remove submodules without permission.
- If you need to test something that needs the adding/removal 
  of a submodule, test it under a forked version of the software,
  outside of the GitHub organization.
- Only commit changes relating to global modifications only.

This directory is for handling compilations of the OS only.

## Why git submodules?
It makes it easier to fork the software as needed if there are 
custom submodules helping manage things. Replacing a CoreNGS git
submodule is surprisingly easy, and later a script will be designed
to replace submodules more easily.

### Removing existing submodule
In the file `.gitmodules`, find the submodule you want to remove. Example:
```toml
[submodule "api"]
	path = api
	url = https://github.com/CoreNGS/api
```
Once you remove the submodule (including path and url deifinitions), do the same in `.git/config`. then do both of these commands (replace `[submodule]` with the submodule you intend to remove):
```sh
git rm -rf --cached [submodule]
rm -rf [submodule]
```
Example:
```sh
git rm -rf --cached api
rm -rf api
```
Now delete the untracked files (replace `[submodule]` with the submodule you intend to remove):
```sh
rm -rf .git/modules/[submodule]
```
Example:
```sh
rm -rf .git/modules/api
```

### Adding custom submodule
Adding a submodule is actually a lot easier than removing it. It only takes one command. 

replace `[submodule url]` with the URL to your submodule.
```sh
git submodule add [submodule url]
```
Example:
```sh
git submodule add https://github.com/CoreNGS/api
```