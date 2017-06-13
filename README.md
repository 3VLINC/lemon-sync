# Docker LemonSync
Sync local theme files to your Lemon Stand store using the lemonsync command line utility.

## Usage

### Volumes
Mount a lemonsync.cfg file and a folder for your theme files to the volume /working_dir. 

For more information on settings available in lemonsync.cfg see the lemonsync repository: [https://github.com/lemonstand/lemonsync](https://github.com/lemonstand/lemonsync).

Set the watch_dir setting in the lemonsync.cfg file to `/working_dir/theme` to sync whenever a change is made to your theme files.


## Example docker-compose.yaml

```
version: '2'
services:
  lemonsync:
    image: threevl/lemonsync:latest
    volumes:
      - ./theme:/working_dir/theme
      - ./lemonsync.cfg:/working_dir/lemonsync.cfg
```