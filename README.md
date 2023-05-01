# Helm charts

This repository contains personal helm charts.

## Chart dependencies

For helm chart dependencies the required repository needs to be added.
In case a new dependency repository is needed it should be added to `bin/add-repos`.
Otherwise the workflow will be broken as helm would be unable to build the chart dependencies.

To locally add all necessary repos:

```sh
./bin/add-repos
```

## Legacy helm charts

To add legacy helm charts, they need to be added to a release with the packaged chart as an asset.
Then the chart releaser picks it up on its next run where a chart changes. 

The script expect either a directory of packaged charts or a single file.
The release tag and so on are derived from the file name.

```sh
 export GITHUB_TOKEN=abc-xyz

./bin/release-legacy-chart -f example-0.1.0.tgz
./bin/release-legacy-chart -d charts
```

> Note the space to hide the token from history.

> The directory should only contain packaged helm charts and nothing else.
> Otherwise it will fail.
