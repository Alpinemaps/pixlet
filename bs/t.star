load("render.star", "render")
load("time.star", "time")

def main(config):
    now = time.now().format("2006-01-02")
    now5 = time.parse_time(now) - now.parse_duration("120h")
    print("Today:", now)
    print("5 days:", now5)


    return render.Root(
    )
