load("render.star", "render")
load("time.star", "time")
load("humanize.star", "humanize")

def main(config):
    date = time.now()
    day_only = time.time(year = date.year, month = date.month, day = date.day)
    five_ago = day_only - time.parse_duration("120h")
    
    print("date:", date)
    print("day_only:", day_only)
    print("five_ago:", five_ago)
    
    return render.Root(
    )
