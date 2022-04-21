load("render.star", "render")
load("time.star", "time")

def main(config):
    now = time.now()
    print("Today:", now)


    return render.Root(
    )
