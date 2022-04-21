load("render.star", "render")
load("time.star", "time")

def main(config):
    now = time.now() - time.parse_duration("120h").format("2020-01-02")
    print("Today:", now)

    return render.Root(
    )
