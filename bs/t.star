load("render.star", "render")
load("time.star", "time")

def main(config):
    now = time.now().format("yyyy-MM-dd")
    print("Today:", now)

    return render.Root(
    )
