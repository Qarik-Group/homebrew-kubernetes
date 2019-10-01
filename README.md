# Homebrew Tap for Kubernetes utilities

## Homebrew

To enable Homebrew Tap:

```plain
brew tap starkandwayne/kubernetes
```

Current brews offered:

- Other's tools:
  - [kn](https://github.com/knative/client)
  - [knctl](https://github.com/cppforlife/knctl)
  - [istiocli](https://github.com/istio/istio)
  - [kwt](https://github.com/cppforlife/kwt)
  - [riff](https://github.com/projectriff/riff)

```plain
brew install kn
brew install knctl
brew install istiocli
brew install kwt
brew install riff
```

## CI

The CI pipeline to automatically update these Homebrew & Debian packages is:

- Hosted at https://ci2.starkandwayne.com/teams/starkandwayne/pipelines/homebrew-kubernetes
- Defined at https://github.com/starkandwayne/homebrew-kubernetes under the ci/ folder
