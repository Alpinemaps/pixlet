load("render.star", "render")
load("time.star", "time")

def main(config):
    now = time.now().format("2006-01-02")
    hours = 120
    now5 = now.Add(time.Duration(-hours)
    print("Today:", now)
    print("hours:", hours)
    print("5 days ago:", now5)

    return render.Root(
    )
