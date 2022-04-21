load("render.star", "render")
load("time.star", "time")

def main(config):
    now = config.get("time")
    now = time.parse_time(now)
    now_date = now.format("2006-01-02")
    print("Today:", now_date)

    Year = now.year    
    Month = now.month        
    Day = now.day
    
    print("Today:", now)
    print("Year:", Year)
    print("Month:", Month)
    print("Day:", Day)

    return render.Root(
    )
