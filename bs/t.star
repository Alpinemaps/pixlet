load("render.star", "render")
load("time.star", "time")
load("humanize.star", "humanize")

def main(config):
    now = humanize.time_format("yyyy-MM-dd",time.now())
    print("Today:", now)
   
    return render.Root(
    )
