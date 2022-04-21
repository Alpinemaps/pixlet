load("render.star", "render")
load("schema.star", "schema")
load("time.star", "time")
load("re.star", "re")
load("sunrise.star", "sunrise")
load("encoding/base64.star", "base64")
load("encoding/json.star", "json")

def main(config):
    now = time.now
    Year = now.year    
    Month = now.month        
    Day = now.day
    
    print("Today:", now)
    print("Year:", Year)
    print("Month:", Month)
    print("Day:", Day)

    return render.Root(
    )
