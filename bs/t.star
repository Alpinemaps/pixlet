load("render.star", "render")
load("time.star", "time")
load("humanize.star", "humanize")

def main(config):
    now = time.now().format("2006-01-02")
    now5 = time.now().AddDate(0, 0, -5)
    print("Today:", now)
    print("5 days ago:", now5)
   
    return render.Root(
    )
