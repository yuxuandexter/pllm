import logging
import sys
import threading

import pytest

# Many short-lived threads (TCP readers, HTTP servers) under the guard's address-space cap:
# keep each thread's stack reservation small.
threading.stack_size(1 << 20)


@pytest.fixture
def caplog(caplog, monkeypatch):
    # PD loggers stop propagation; capture their records at the source, including
    # loggers reinitialized when a test constructs PDHooks.
    attached = set()

    def capture(logger):
        if not logger.propagate:
            logger.addHandler(caplog.handler)
            attached.add(logger)
        return logger

    for name, logger in logging.Logger.manager.loggerDict.copy().items():
        if name.startswith("minisgl.disagg.") and isinstance(logger, logging.Logger):
            capture(logger)
    scheduler_pd = sys.modules.get("minisgl.disagg.scheduler_pd")
    if scheduler_pd is not None:
        original = scheduler_pd.init_logger

        def init_logger(*args, **kwargs):
            return capture(original(*args, **kwargs))

        monkeypatch.setattr(scheduler_pd, "init_logger", init_logger)
    yield caplog
    for logger in attached:
        logger.removeHandler(caplog.handler)
