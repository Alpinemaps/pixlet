load("render.star", "render")
load("time.star", "time")
load("humanize.star", "humanize")

def main(config):
    now = time.now()
    humanized_time_past = humanize.time(now - time.parse_duration("120h"))
    print("Today:", humanized_time_past)

    return render.Root(
    )
