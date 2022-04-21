load("render.star", "render")
load("time.star", "time")

def main(config):
    now = time.now()
    now5 = time.parse_time(now) - now.parse_duration("120h")
    now5parse = now5.format("2006-01-02")
    print("Today:", now)
    print("5 days:", now5)


    return render.Root(
    )
