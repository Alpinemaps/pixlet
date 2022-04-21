load("render.star", "render")
load("time.star", "time")

def main(config):
    now = time.now()
    Month = now.format("01")
    print("Month:", Month)
