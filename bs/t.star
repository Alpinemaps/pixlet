load("render.star", "render")
load("time.star", "time")

def main(config):
    now = time.now()
    Year = now.format("2020")
    Month = now.format("01")
    Day = now.format("01")
    print("Today:", now)
    print("Year:", Year)
    print("Month:", Month)
    print("Day:", Day)
