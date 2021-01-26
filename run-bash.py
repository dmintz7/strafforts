import os, schedule, time

def run_command(command):
	os.system(command)

def run_scheduler():
	while True:
		try:
			schedule.run_all()
			while True:
				schedule.run_pending()
				time.sleep(1)
		except:
			pass
		
schedule.every(5).minutes.do(run_command, '/bin/bash /app/all-athletes-lifetime-subscriptions.sh')
p1 = Process(target=run_scheduler)
p1.start()