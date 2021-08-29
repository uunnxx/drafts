import multiprocessing as mp
import time


#max number to look up to
MAX_NUMBER = 20000
#four processes per cpu
num_processes = mp.cpu_count() * 2

def chunks(seq, chunks):
    size = len(seq)
    start = 0
    for i in range(1, chunks + 1):
        stop = i * size // chunks
        yield seq[start:stop]
        start = stop

def calc_primes(numbers):
    num_primes = 0
    primes = []

    #Loop through each number, then through the factors to identify prime numbers
    for candidate_number in numbers:
        found_prime = True
        for div_number in range(2, candidate_number):
            if candidate_number % div_number == 0:
                found_prime = False
                break
        if found_prime:
            primes.append(candidate_number)
            num_primes += 1
    return  num_primes

def main():
    #Record the test start time
    start = time.time()

    pool = mp.Pool(num_processes)

    #0 and 1 are not primes
    parts = chunks(range(2, MAX_NUMBER, 1), 1)
    #run the calculation
    results = pool.map(calc_primes, parts)
    total_primes = sum(results)

    pool.close()

    #Once all numbers have been searched, stop the timer
    end = round(time.time() - start, 2)

    #Display the results, uncomment the last to list the prime numbers found
    print('Find all primes up to: ' + str(MAX_NUMBER) + ' using ' + str(num_processes) + ' processes.')
    print('Time elasped: ' + str(end) + ' seconds')
    print('Number of primes found ' + str(total_primes))

if __name__ == "__main__":
    main()
