load("render.star", "render")
load("schema.star", "schema")
load("time.star", "time")
load("re.star", "re")
load("sunrise.star", "sunrise")
load("encoding/base64.star", "base64")
load("encoding/json.star", "json")

def main(config):
    now = config.get("time")
    now_date = now.format("Mon 2 Jan 2006")
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
