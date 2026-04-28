# David Park Omer Portfolio — Static CMS Version

This version keeps GitHub Pages hosting simple while making the portfolio case studies editable like a lightweight CMS.

## Files

- `index.html` — main resume / portfolio page
- `content/case-studies.json` — homepage portfolio card content
- `case-studies/*.html` — static detail pages for each case study

## Editing workflow

1. Edit `content/case-studies.json` to change titles, summaries, tags, card bullets, or URLs.
2. Edit the matching file in `case-studies/` when a full case-study page needs richer content.
3. Commit and push to GitHub.
4. GitHub Pages serves the updated static site.

## Local preview

Because the homepage uses `fetch()` to load the JSON file, preview through a local web server instead of double-clicking the file.

```bash
python3 -m http.server 8080
```

Then open:

```text
http://localhost:8080
```

## Privacy note

All case studies are generalized and anonymized. Do not add proprietary code, client data, screenshots, confidential architecture diagrams, or implementation details.
