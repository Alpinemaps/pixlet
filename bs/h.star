load("render.star", "render")
load("time.star", "time")
load("humanize.star", "humanize")

def main(config):
    timezone = config.get("timezone") or "America/New_York"
    now = time.now()
    past_date = now-time.parse_duration("120h")

    now_str = humanize.time_format("yyyy-MM-dd",time.time(year=now.year,month=now.month,day=now.day,location=timezone))
    past_str = humanize.time_format("yyyy-MM-dd",time.time(year=past_date.year,month=past_date.month,day=past_date.day,location=timezone))
    
    print("now_str:", now_str)
    print("past_str:", past_str)
    
    return render.Root(
    )
