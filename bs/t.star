load("render.star", "render")
load("time.star", "time")

def main(config):
    nowdate = time.now()
    nowparse = time.parse_time(nowdate)
    print("nowdate:", nowdate)
    print("nowparse:", nowparse)
