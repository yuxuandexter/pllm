"""PD disaggregation glue for mini-sglang (the ledger protocol).

Everything in this package except ``scheduler_pd.py`` is torch-free so that it can be tested
on CPU.  Every page-ownership decision goes through ``ledger.Ledger``; the Python glue only
follows the ledger's answers.
"""
