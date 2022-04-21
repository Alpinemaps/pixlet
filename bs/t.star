load("render.star", "render")
load("time.star", "time")

def main(config):
    now = time.now()
    Year = now.year    
    
    if now.month < 10:
        Month = "0" + now.month
        else:
        Month = now.month
        
    Day = now.day
    
    print("Today:", now)
    print("Year:", Year)
    print("Month:", Month)
    print("Day:", Day)

    return render.Root(
    )
