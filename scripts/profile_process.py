import sys
import psutil
import time

got_pid = False
pid = 0
tick = 0
counter=[]
cpu=[]
mem=[]
if len(sys.argv) < 2:
	print('Usage:\npython profile_process.py process_name\n')
	sys.exit(0)

while got_pid is False:
	for proc in psutil.process_iter(attrs=['pid','name']):
		if proc.info['name'] == sys.argv[1]:
			pid = proc.info['pid']
			got_pid = True
			break

print('pid of process {} is {}, gathering CPU and memory consumption.\n'
    .format(sys.argv[1], pid))

p = psutil.Process(pid)
while psutil.pid_exists(pid):
	tick += 1
	counter.append(tick)
	cpu.append(p.cpu_percent())
	mem.append(p.memory_percent())
	time.sleep(1)

# Show the averages
avg_cpu = sum(cpu) / tick
avg_mem = sum(mem) / tick
print('Profiling of {}({}) finished.\n'
    'CPU consumption:{}%\n'
    'Memory consumption:{}.'.format(sys.argv[1], pid, avg_cpu, avg_mem))

# plot the graphs

