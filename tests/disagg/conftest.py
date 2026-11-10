import threading

# Many short-lived threads (TCP readers, HTTP servers) under the guard's address-space cap:
# keep each thread's stack reservation small.
threading.stack_size(1 << 20)
