load("render.star", "render")
load("time.star", "time")
load("humanize.star", "humanize")

def main(config):
    now = humanize.time_format("yyyy-mm-dd",time.now())
    Year = now.year  
    Month = now.month        
    Day = now.day
    
    print("Today:", now)
    print("Year:", Year)
    print("Month:", Month)
    print("Day:", Day)

    return render.Root(
    )
