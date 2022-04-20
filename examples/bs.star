load("render.star", "render")
load("http.star", "http")

BRICKSET_URL = "https://brickset.com/api/v3.asmx/getSets?apiKey=3-7lT2-EYit-9z6Xz&userHash=yqhzUwRTKR&params={'updatedSince':'2022-04-15','year':'2022','orderBy':'lastUpdatedDESC'}"

def main():
    rep = http.get(BRICKSET_URL)
    if rep.status_code != 200:
        fail("Brickset request failed with status %d", rep.status_code)

    lego0 = rep.json()["sets"][0]["number"]["name"]
    lego1 = rep.json()["sets"][1]["number"]["name"]

    return render.Root(
        child = render.Text("Set: %s" % lego0)
    )
