"""The ledger owns all KV page decisions; the glue follows its results.

Only scheduler_pd.py depends on torch, so the protocol can be tested on CPU."""
