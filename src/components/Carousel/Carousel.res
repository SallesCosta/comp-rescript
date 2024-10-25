open Render
open React
open CarouselStyle

type mockedDataProps = {
  title: string,
  description: string,
  imgUrl: string,
  dotIcon: string,
  buttonLabel: string,
}

let mockedData = [
  {
    title: "Un soupçon",
    description: "Série française | Qui est Isabelle ? Une meurtrière en série, une menteuse, une...",
    imgUrl: "https://www.france.tv/image/vignette_3x4/300/400/s/i/7/afcdf53b-phpwqt7is.jpg",
    dotIcon: "point-2.svg",
    buttonLabel: "découvrir",
  },
  {
    title: "Un si grand soleil",
    description: "'Un si grand soleil', la série quotidienne a succès tournée à Montpellier et ses...",
    imgUrl: "https://www.france.tv/image/vignette_3x4/300/400/g/o/b/1e12d2da-phph4fbog.jpg",
    dotIcon: "point-3.svg",
    buttonLabel: "découvrir",
  },
  {
    title: "Dans l'ombre",
    description: "Paul Francoeur vient de remporter les primaires de son parti et démarre une campagne...",
    imgUrl: "https://www.france.tv/image/vignette_3x4/300/400/r/i/i/91d1988b-phpmmwiir.jpg",
    dotIcon: "point-5.svg",
    buttonLabel: "découvrir",
  },
  {
    title: "Tom et Lola",
    description: "Série française (12 x 52 min) | Un ami, on aime ses défauts. Un coloc, on le supporte...",
    imgUrl: "https://www.france.tv/image/vignette_3x4/300/400/e/n/p/47904b58-phpwwapne_png.jpg",
    dotIcon: "point-2.svg",
    buttonLabel: "découvrir",
  },
  {
    title: "Sur la dalle",
    description: "L'adaptation du roman éponyme de Fred Vargas. Sur la dalle offre un voyage dans...",
    imgUrl: "https://www.france.tv/image/vignette_3x4/300/400/j/y/1/04d91c44-phptcn1yj.jpg",
    dotIcon: "point-3.svg",
    buttonLabel: "découvrir",
  },
  {
    title: "Meurtres à...",
    description: "Une collection d'intrigues policières liées à une légende ou une particularité locale...",
    imgUrl: "https://www.france.tv/image/vignette_3x4/300/400/j/n/x/e8dad439-phpqo6xnj.jpg",
    dotIcon: "point-5.svg",
    buttonLabel: "découvrir",
  },
  {
    title: "Notre Histoire de France",
    description: "De la Gaule antique à la Renaissance, du façonnement d'un peuple et d'un territoire...",
    imgUrl: "https://www.france.tv/image/vignette_3x4/300/400/1/y/m/6432619c-phpttwmy1.jpg",
    dotIcon: "point-2.svg",
    buttonLabel: "découvrir",
  },
  {
    title: "Damnésd",
    description: "Série fantastique (8x52min) | Découvrez le monde sombre et palpitant de Damnés (Fallen)...",
    imgUrl: "https://www.france.tv/image/vignette_3x4/300/400/y/2/o/d5f74619-phpp6jo2y.jpg",
    dotIcon: "point-3.svg",
    buttonLabel: "découvrir",
  },
  {
    title: "Le monde en face",
    description: "Des documentaires, des films aux points de vue affirmés et des débats, telles sont...",
    imgUrl: "https://www.france.tv/image/vignette_3x4/300/400/k/l/g/fab139a0-phpyg6glk.jpg",
    dotIcon: "point-5.svg",
    buttonLabel: "découvrir",
  },
  {
    title: "C dans l'air",
    description: "Caroline Roux du lundi au jeudi et Axel de Tarlé les vendredis et samedis rendent...",
    imgUrl: "https://www.france.tv/image/vignette_3x4/300/400/v/6/9/c5c44a98-phpg1l96v_png.jpg",
    dotIcon: "point-5.svg",
    buttonLabel: "découvrir",
  },
]


@react.component
let make = () => {

  let startItem = 1
  let lastItem = 3
  let (currentIndex, setCurrentIndex) = useState(() => startItem)

  let handleRightClick = _ => {
    if currentIndex < lastItem {
      let newIndex = currentIndex + startItem
      setCurrentIndex(_ => newIndex)
    }
  }

  let handleLeftClick = _ => {
    if currentIndex > 0 {
      let newIndex = currentIndex - startItem
      setCurrentIndex(_ => newIndex)
    }
  }

  <div className=container>
    <h2 className=title> {"Top 10 en ce moment"->s} </h2>
    <div className=list(~p=currentIndex)>
      {map(mockedData, (item, key) => {
        let {title, dotIcon, description, imgUrl, buttonLabel} = item
        <div key>
          <Card title description imgUrl buttonLabel dotIcon />
        </div>
      })}
    </div>
    {currentIndex > startItem
      ? <div className=actionsLeft id="actionsButtons" onClick=handleLeftClick>
         <ArrowButton dir=#left />
       </div>
     : <div />
    }
    {currentIndex < lastItem
      ? <div className=actionsRight id="actionsButtons" onClick=handleRightClick>
         <ArrowButton dir=#right />
        </div>
      : <div />
    }
  </div>
}

