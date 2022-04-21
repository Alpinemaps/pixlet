load("render.star", "render")
load("time.star", "time")

def main(config):
    now = time.now()
    Year = now.year    
    Month = now.month        
    Day = now.day
    
    print("Today:", now)
    print("Year:", Year)
    if Month == 4:
        print("Month:0", Month)
    print("Day:", Day)

    return render.Root(
    )
