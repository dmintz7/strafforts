import os, schedule, time
from multiprocessing import Process

def run_scheduler():
	while True:
		try:
			schedule.run_all()
			while True:
				schedule.run_pending()
				time.sleep(1)
		except:
			pass
		
schedule.every(5).minutes.do(os.system, '/bin/bash /app/all-athletes-lifetime-subscriptions.sh')
p1 = Process(target=run_scheduler)
print("Starting Script to Auto-subscribe and Confirm Email Addresses")
p1.start()