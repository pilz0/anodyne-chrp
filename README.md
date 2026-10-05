# Anodyne-chrp

AnodyneWiki's aggregator scripts.

## Usage
### with nix
`nix develop .`

### without nix

```shell
# enter frontend directory
cd /usr/src/anodyne-frontend

# setup ref icons etc
/usr/src/chrp/exe/chrp --mode=init

# manually clear substance cache
/usr/src/chrp/exe/chrp --cache=/tmp/chrp --mode=uncache EPT

# aggregate substance data without clearing cache
/usr/src/chrp/exe/chrp --cache=/tmp/chrp --mode=search EPT

# aggregate substance data after clearing cache
/usr/src/chrp/exe/chrp --cache=/tmp/chrp --mode=research EPT

# update substituent index
/usr/src/chrp/exe/chrp --cache=/tmp/chrp --mode=index Phenethylamine
```
