load("render.star", "render")
load("time.star", "time")
load("humanize.star", "humanize")

def main(config):
    now = time.now()
    humanized_date_format_date = humanize.time_format("yyyy-MM-dd", now)
    print("Today:", humanized_date_format_date)

    return render.Root(
    )
