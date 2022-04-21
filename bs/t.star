load("render.star", "render")
load("time.star", "time")

def main(config):
    now = time.now().format("2006-01-02")
    now5 = now.AddDate(1,0,0)
    print("Today:", now)

    return render.Root(
    )
