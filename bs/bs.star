load("render.star", "render")
load("time.star", "time")
load("http.star", "http")

def main(config):
    date = time.now()
    day_only = time.time(year = date.year, month = date.month, day = date.day)
    five_ago = day_only - time.parse_duration("120h")
    five_ago = five_ago.format("2006-01-02")
    day_only = day_only.format("2006-01-02")
    
    print("date:", date)
    print("day_only:", day_only)
    print("five_ago:", five_ago)
    print(dir(five_ago))

    BRICKSET_URL = "https://brickset.com/api/v3.asmx/getSets?apiKey=3-7lT2-EYit-9z6Xz&userHash=yqhzUwRTKR&params={'updatedSince':'%s','year':'2022'}" % day_only
    print(BRICKSET_URL)

    font = config.get("font", "tb-8")
    rep = http.get(BRICKSET_URL)
    if rep.status_code != 200:
        fail("Brickset request failed with status %d", rep.status_code)

    lego0name = rep.json()["sets"][0]["name"]
    lego0number = rep.json()["sets"][0]["number"]
    lego1name = rep.json()["sets"][1]["name"]
    lego1number = rep.json()["sets"][1]["number"]
    lego2name = rep.json()["sets"][2]["name"]
    lego2number = rep.json()["sets"][2]["number"]

    return render.Root(
        child = render.Column(
            children = [
                render.Box(
                    width = 64,
                    height = 1,
                    color = "#ed3223",
                ),
                render.Marquee(
                    width = 64,
                    child = render.Text("%s" % lego0number + " - " + "%s" % lego0name, font = font),
                ),
                render.Box(
                    width = 64,
                    height = 1,
                    color = "#349a47",
                ),
                render.Marquee(
                    width = 64,
                    child = render.Text("%s" % lego1number + " - " + "%s" % lego1name, font = font),
                ),
                render.Box(
                    width = 64,
                    height = 1,
                    color = "#ecb220",
                ),
                render.Marquee(
                    width = 64,
                    child = render.Text("%s" % lego2number + " - " + "%s" % lego2name, font = font),
                ),
                render.Box(
                    width = 64,
                    height = 1,
                    color = "#ed3223",
                ),
            ],
        ),
    )
