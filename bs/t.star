load("render.star", "render")
load("time.star", "time")

def main(config):
    now = time.now()
    Year = now.year
    month = now.format("Jan").upper()
    Day = now.day
    print("Today:", now)
    print("Year:", Year)
    print("Month:", Month)
    print("Day:", Day)

    return render.Root(
    )
