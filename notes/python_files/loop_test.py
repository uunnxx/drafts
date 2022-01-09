import time

COUNTER = 0

# t_end = time.time() + 60 * 15
# This will run for 15 min x 60 s = 900 seconds

t_end = time.time() + 10

while time.time() < t_end:
    COUNTER += 1

print(COUNTER)
