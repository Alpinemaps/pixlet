load("render.star", "render")
load("time.star", "time")
load("humanize.star", "humanize")

def main(config):
    now = time.now()
    humanized_time_past = humanize.time(now - time.parse_duration("120h"))
    humanized_date_format_date = humanize.time_format("yyyy-MM-dd", humanized_time_past)
    print("Today:", humanized_date_format_date)

    return render.Root(
    )
