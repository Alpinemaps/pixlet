load("render.star", "render")
load("time.star", "time")

def main(config):
    now = time.now()
    nowparse = time.now() - time.parse_duration("120h")
    now5 = nowparse.time.format("2020-01-02")
    print("Today:", now5)

    return render.Root(
    )
