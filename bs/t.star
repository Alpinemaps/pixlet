load("render.star", "render")
load("schema.star", "schema")
load("time.star", "time")
load("re.star", "re")
load("sunrise.star", "sunrise")
load("encoding/base64.star", "base64")
load("encoding/json.star", "json")

def main(config):
    location = config.get("America/New_York")
    location = json.decode(location) if location else {}

    timezone = location.get(
        "timezone",
        config.get("$tz", location),
    )
    now = config.get("time")
    now = (time.parse_time(now) if now else time.now()).in_location(timezone)
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
