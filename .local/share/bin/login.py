import sys
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import subprocess
import time

driver = webdriver.Firefox()
driver.set_page_load_timeout(40)
driver.get("https://cas.uphf.fr/cas/login?service=https://ent.uphf.fr/uPortal/Login")
passwd = subprocess.run(['pass','sesame'], stdout=subprocess.PIPE).stdout.decode('utf-8')
elem = driver.find_element(By.NAME, "username")
elem.clear()
elem.send_keys("marc.robison")
elem2 = driver.find_element(By.NAME, "password")
elem2.clear()
elem2.send_keys(passwd)
elem2.send_keys(Keys.RETURN)
element = WebDriverWait(driver, 10).until(
EC.presence_of_element_located((By.CLASS_NAME, "portal-navigation-link  ")))
driver.get("https://moodle.uphf.fr/login/index.php?authCAS=CAS")
driver.get("https://moodle.uphf.fr/my/courses.php")
class_id = sys.argv[1]
url = "https://moodle.uphf.fr/course/view.php?id="
driver.get(url+class_id)
