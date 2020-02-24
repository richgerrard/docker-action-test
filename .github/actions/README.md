# Network Policy Checker fof chart folders: docker action

This action prints T/F to the log, denoting whether the checked component requires a network policy file, or not.

## Inputs

### `components-to-scan`

**Required** The names of the component folders to scan. Default `"data-connections"`.

## Outputs

### `policy-required`

Whether the component requires a network policy or not.

## Example usage

uses: actions/docker-action-test@v1
with:
  components-to-scan: 'data-connections'
