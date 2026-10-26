# YouTube Long-Form Video Performance Analysis
Channel and business stakeholder: Dr. Agustín Landívar (CEO). Analyst: Marco Antonio Cruz Rojas.

## Open the analysis
- `notebooks/01_data_audit.ipynb`: executed notebook, PACE documentation, charts and interpretations.
- `reports/long_form_analysis.html`: standalone browser-readable version with embedded figures.
- `data/raw/500 VIDEO LIVES LARGOS.xlsx`: preserved original workbook.
- `data/processed/youtube_long_form_tableau.csv`: all video metrics, derived fields and category status.
- `data/processed/category_review.csv`: editable review file, preserved on notebook reruns.
- `data/processed/youtube_long_form.sqlite`: generated SQLite database, validated against pandas.
- `sql/category_analysis_postgresql.sql`: optional later PostgreSQL queries, not executed in PostgreSQL.
- `images`: exported PNG charts.

## Run locally
Use Python 3.12 or a compatible version supported by these dependencies.
Create/activate a virtual environment, then run `python -m pip install -r requirements.txt`.
Select that environment as the notebook kernel and run all cells from top to bottom.
The generation environment executed code cells sequentially in Python and captured outputs; it did not run a Jupyter server.

## Human review
Categories are rule-based proposals, not verified video reviews. Edit final_category and review_status in category_review.csv using a UTF-8-aware CSV editor. Allowed statuses: Proposed, Needs review, Reviewed. Leave IDs unchanged. The notebook validates IDs and taxonomy values and preserves existing review decisions on reruns.
Unconfirmed export period, filters and format remain explicit limitations. Do not interpret this subset as the whole channel. Do not sum per-video audience counts as unique viewers.

## Delivery
Extract into a separate folder first. Copy the notebook to your project and keep the source filename unchanged. Copy category_review.csv only if you do not already have a manually reviewed version. Do not replace your existing .venv. requirements.txt lists the required packages without forcing a downgrade of your existing environment. requirements-tested-python312.txt records the analysis environment versions. The notebook was executed under Python 3.12; your local Python environment still needs its own Run All check.
No source workbook was modified. No categories were marked manually reviewed by the automated draft. Public publication of data and financial results requires the analyst's permission review.
