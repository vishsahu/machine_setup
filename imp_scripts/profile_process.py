import sys
import psutil
import time

pid = 0
tick = 0
counter=[]
cpu=[]
mem=[]
if len(sys.argv) < 2:
	print('Usage:\npython profile_process.py process_name\n')
	sys.exit(0)

for proc in psutil.process_iter(attrs=['pid','name']):
	if proc.info['name'] == sys.argv[1]:
		pid = proc.info['pid']
		break

print('pid of process {} is {}, waiting for it\'s termination.\n'
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
    'Profiling time:{} seconds\n'
    'CPU consumption:{}%\n'
    'Memory consumption:{}.'.format(sys.argv[1], pid, tick, avg_cpu, avg_mem))

# plot the graphs

