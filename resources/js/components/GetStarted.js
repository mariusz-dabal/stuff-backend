import React from "react";
import "../../sass/GetStarted.scss";
// import gif1 from "../img/Gif-1.gif";
// import gif2 from "../img/Gif-2.gif";
const gif1 = "http://jimmyspage.pl/storage/images/Gif-1.gif";
const gif2 = "http://jimmyspage.pl/storage/images/Gif-2.gif";

function GetStarted() {
    return (
        <div className="get-started">
            <h1 className="get-started__about">
                Organizer ulubionych stron internetowych
            </h1>
            <div className="get-started__step">
                <div className="get-started__gif get-started__gif--first">
                    <img src={gif1} alt="Step 1" />
                </div>
                <h3 className="get-started__title get-started__title--first">
                    1. Zakładaj karty z kategoriami
                </h3>
            </div>
            <div className="get-started__step">
                <div className="get-started__gif get-started__gif--second">
                    <img src={gif2} alt="Step 2" />
                </div>
                <h3 className="get-started__title get-started__title--second">
                    2. Personalizuj grupy, strony i notatki
                </h3>
            </div>
        </div>
    );
}

export default GetStarted;
