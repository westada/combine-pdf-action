# combine-pdf-action

GitHub Action to combine PDFs.

## Usage

Here's an example showing how to combine PDFs in the `resources` folder of your repository:

```yml
on: [push]

jobs:
  combine_pdfs:
    runs-on: ubuntu-latest
    name: Combine PDFs
    steps:
      - name: Checkout repository
        uses: actions/checkout@v2
      - name: Combine PDFs
        id: combine
        uses: amoeba/combine-pdf-action@v1
        with:
          path: resources
      - name: Upload combined pdf
        uses: actions/upload-artifact@v2
        with:
          name: combined-pdf
          path: resources/combined.pdf
```