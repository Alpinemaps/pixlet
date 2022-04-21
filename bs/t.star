load("render.star", "render")
load("time.star", "time")

def main(config):
    now = time.now() - time.Duration(120)
    print("Today:", now)


    return render.Root(
    )
