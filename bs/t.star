load("render.star", "render")
load("time.star", "time")

def main(config):
    now = time.now().format("2006-01-02")
    year = time.year
    print("Today:", now)
    print("hours:", year)
    
    return render.Root(
    )
