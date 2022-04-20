load("render.star", "render")
load("http.star", "http")

BRICKSET_URL = "https://brickset.com/api/v3.asmx/getSets?apiKey=3-7lT2-EYit-9z6Xz&userHash=yqhzUwRTKR&params={'updatedSince':'2022-04-15','year':'2022'}"

def main(config):
    font = config.get("font", "tb-8")
    rep = http.get(BRICKSET_URL)
    if rep.status_code != 200:
        fail("Brickset request failed with status %d", rep.status_code)

    lego0name = rep.json()["sets"][0]["name"]
    lego0number = rep.json()["sets"][0]["number"]
    lego1name = rep.json()["sets"][1]["name"]
    lego1number = rep.json()["sets"][1]["number"]
    lego1name = rep.json()["sets"][2]["name"]
    lego1number = rep.json()["sets"][2]["number"]

    return render.Root(
        child = render.Column(
            children = [
                render.Box(
                    width = 64,
                    height = 1,
                    color = "#78DECC",
                ),
                render.Marquee(
                    width = 64,
                    child = render.Text("%s" % lego0number + " - " + "%s" % lego0name, font = font),
                ),
                render.Box(
                    width = 64,
                    height = 1,
                    color = "#78DECC",
                ),
                render.Marquee(
                    width = 64,
                    child = render.Text("%s" % lego1name, font = font),
                ),
                render.Box(
                    width = 64,
                    height = 1,
                    color = "#78DECC",
                ),
                render.Marquee(
                    width = 64,
                    child = render.Text("!@#$%^&*()_+:?><~`", font = font),
                ),
                render.Box(
                    width = 64,
                    height = 1,
                    color = "#78DECC",
                ),
            ],
        ),
    )
