load("render.star", "render")
load("time.star", "time")

def main(config):
    now = time.now()
    Year = now.year    
    Month = now.month
    
    if Month < 10:
        Month0 = "0" + Month
        Month = Month0
        
    Day = now.day
    
    print("Today:", now)
    print("Year:", Year)
    print("Month:", Month)
    print("Day:", Day)

    return render.Root(
    )
