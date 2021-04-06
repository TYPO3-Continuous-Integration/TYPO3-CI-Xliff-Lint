# TYPO3 Xliff Lint Github Action

This action lints xliff code of your TYPO3 extension.

## Inputs

### `Files`

Files you want to lint. Default `Resources`.

## Example usage

```
uses: typo3-continuous-integration/typo3-ci-xliff-lint@v1
with:
  files: 'Resources'
```