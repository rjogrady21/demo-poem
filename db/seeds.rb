require 'json'
require 'open-uri'

puts 'Cleaning database...'
# Poem.destroy_all
# Poet.destroy_all


# def wikipedia_api(poet)
#   url = "https://en.wikipedia.org/w/api.php?action=query&amp;page=test&amp;format=json"
#   user_serialized = open(url).read
#   poet = JSON.parse(user_serialized)
#   return poet
# end

# puts wikipedia_api("langston_hughes")

puts "seeding poets"

Poet.create(
  name: "Philip Larkin",
  year_of_birth: 1922,
  biography: "Philip Arthur Larkin CH CBE FRSL (9 August 1922 – 2 December 1985) was an English poet, novelist and librarian. His first book of poetry, The North Ship, was published in 1945, followed by two novels, Jill (1946) and A Girl in Winter (1947), and he came to prominence in 1955 with the publication of his second collection of poems, The Less Deceived, followed by The Whitsun Weddings (1964) and High Windows (1974). He contributed to The Daily Telegraph as its jazz critic from 1961 to 1971, articles gathered in All What Jazz: A Record Diary 1961–71 (1985), and he edited The Oxford Book of Twentieth Century English Verse (1973). His many honours include the Queen's Gold Medal for Poetry. He was offered, but declined, the position of Poet Laureate in 1984, following the death of Sir John Betjeman.

After graduating from Oxford in 1943 with a first in English language and literature, Larkin became a librarian. It was during the thirty years he worked with distinction as university librarian at the Brynmor Jones Library at the University of Hull that he produced the greater part of his published work. His poems are marked by what Andrew Motion calls 'a very English, glum accuracy about emotions, places, and relationships', and what Donald Davie described as 'lowered sights and diminished expectations'. Eric Homberger (echoing Randall Jarrell) called him 'the saddest heart in the post-war supermarket'—Larkin himself said that deprivation for him was what daffodils were for Wordsworth. Influenced by W. H. Auden, W. B. Yeats, and Thomas Hardy, his poems are highly structured but flexible verse forms. They were described by Jean Hartley, the ex-wife of Larkin's publisher George Hartley (the Marvell Press), as a 'piquant mixture of lyricism and discontent', though anthologist Keith Tuma writes that there is more to Larkin's work than its reputation for dour pessimism suggests."
  )

Poet.create(
  name: "Louis MacNeice",
  year_of_birth: 1907,
  biography: "Frederick Louis MacNeice CBE (12 September 1907 – 3 September 1963) was an Irish poet and playwright. He was part of the generation of the Auden Group that included W. H. Auden, Stephen Spender and Cecil Day-Lewis. MacNeice's body of work was widely appreciated by the public during his lifetime, due in part to his relaxed, but socially and emotionally aware style. Never as overtly (or simplistically) political as some of his contemporaries, his work shows a humane opposition to totalitarianism as well as an acute awareness of his Irish roots."
  )

Poet.create(
  name: "Pablo Neruda",
  year_of_birth: 1904,
  biography: "Ricardo Eliécer Neftalí Reyes Basoalto (12 July 1904 – 23 September 1973), better known by his pen name and, later, legal name Pablo Neruda (/nəˈruːdə/;[1] Spanish: [ˈpaβlo neˈɾuða]), was a Chilean poet-diplomat and politician. Neruda became known as a poet when he was 13 years old, and wrote in a variety of styles, including surrealist poems, historical epics, overtly political manifestos, a prose a,utobiography, and passionate love poems such as the ones in his collection Twenty Love Poems and a Song of Despair (1924). He won the Nobel Prize for Literature in 1971."
  )

Poet.create(
  name: "C.P. Cavafy",
  year_of_birth: 1863,
  biography: "Constantine Peter Cavafy (/kəˈvɑːfɪ/; also known as Konstantin or Konstantinos Petrou Kavafis; Greek: Κωνσταντίνος Π. Καβάφης; April 29 (April 17, OS), 1863 – April 29, 1933) was an Egyptian Greek poet, journalist and civil servant. His consciously individual style earned him a place among the most important figures not only in Greek poetry, but in Western poetry as well.

Cavafy wrote 154 poems, while dozens more remained incomplete or in sketch form. During his lifetime, he consistently refused to formally publish his work and preferred to share it through local newspapers and magazines, or even print it out himself and give it away to anyone interested. His most important poems were written after his fortieth birthday, and officially published two years after his death."
  )

Poet.create(
  name: "Sylvia Plath",
  year_of_birth: 1932,
  biography: "Sylvia Plath (/plæθ/; October 27, 1932 – February 11, 1963) was an American poet, novelist, and short-story writer. Born in Boston, she studied at Smith College and Newnham College at the University of Cambridge before receiving acclaim as a poet and writer. She married fellow poet Ted Hughes in 1956, and they lived together in the United States and then in England. They had two children, Frieda and Nicholas, before separating in 1962.

Plath was clinically depressed for most of her adult life, and was treated multiple times with electroconvulsive therapy (ECT). She committed suicide in 1963.

Plath is credited with advancing the genre of confessional poetry and is best known for two of her published collections, The Colossus and Other Poems and Ariel, and The Bell Jar, a semi-autobiographical novel published shortly before her death. In 1982, she won a posthumous Pulitzer Prize for The Collected Poems."

  )

Poet.create(
  name: "Stevie Smith",
  year_of_birth: 1902,
  biography: "Smith's first volume of poetry, the self-illustrated A Good Time Was Had By All, was published in 1937 and established her as a poet. Soon her poems were found in periodicals. Her style was often very dark; her characters were perpetually saying 'goodbye' to their friends or welcoming death. At the same time her work has an eerie levity and can be very funny though it is neither light nor whimsical. 'Stevie Smith often uses the word 'peculiar' and it is the best word to describe her effects' (Hermione Lee). She was never sentimental, undercutting any pathetic effects with the ruthless honesty of her humour.

'A good time was had by all' itself became a catch phrase, still occasionally used to this day. Smith said she got the phrase from parish magazines, where descriptions of church picnics often included this phrase. This saying has become so familiar that it is recognised even by those who are unaware of its origin. Variations appear in pop culture, including 'Being for the Benefit of Mr. Kite!' by the Beatles.

Though her poems were remarkably consistent in tone and quality throughout her life, their subject matter changed over time, with less of the outrageous wit of her youth and more reflection on suffering, faith and the end of life. Her best-known poem is 'Not Waving but Drowning'. She was awarded the Cholmondeley Award for Poets in 1966 and won the Queen's Gold Medal for poetry in 1969. She published nine volumes of poems in her lifetime (three more were released posthumously)."
  )

Poet.create(
  name: "Langston Hughes",
  year_of_birth: 1902,
  biography: "James Mercer Langston Hughes (February 1, 1902 – May 22, 1967) was an American poet, social activist, novelist, playwright, and columnist from Joplin, Missouri.

He was one of the earliest innovators of the then-new literary art form called jazz poetry. Hughes is best known as a leader of the Harlem Renaissance in New York City. He famously wrote about the period that 'the negro was in vogue', which was later paraphrased as 'when Harlem was in vogue'."
  )

Poet.create(
  name: "Derek Walcott",
  year_of_birth: 1930,
  biography: "Sir Derek Alton Walcott, KCSL, OBE, OCC (23 January 1930 – 17 March 2017) was a Saint Lucian poet and playwright. He received the 1992 Nobel Prize in Literature. He was the University of Alberta's first distinguished scholar in residence, where he taught undergraduate and graduate writing courses. He also served as Professor of Poetry at the University of Essex from 2010 to 2013. His works include the Homeric epic poem Omeros (1990), which many critics view 'as Walcott's major achievement.' In addition to winning the Nobel Prize, Walcott received many literary awards over the course of his career, including an Obie Award in 1971 for his play Dream on Monkey Mountain, a MacArthur Foundation 'genius' award, a Royal Society of Literature Award, the Queen's Medal for Poetry, the inaugural OCM Bocas Prize for Caribbean Literature, the 2011 T. S. Eliot Prize for his book of poetry White Egrets and the Griffin Trust For Excellence In Poetry Lifetime Recognition Award in 2015."
  )

Poet.create(
  name: "W.B. Yeats",
  year_of_birth: 1865,
  biography: "William Butler Yeats[a] (13 June 1865 – 28 January 1939) was an Irish poet and one of the foremost figures of 20th-century literature. A pillar of both the Irish and British literary establishments, he helped to found the Abbey Theatre, and in his later years served as an Irish Senator for two terms. Yeats was a driving force behind the Irish Literary Revival along with Lady Gregory, Edward Martyn and others.

He was born in Sandymount, Ireland and educated there and in London. He spent childhood holidays in County Sligo and studied poetry from an early age when he became fascinated by Irish legends and the occult. These topics feature in the first phase of his work, which lasted roughly until the turn of the 20th century. His earliest volume of verse was published in 1889, and its slow-paced and lyrical poems display Yeats's debts to Edmund Spenser, Percy Bysshe Shelley, and the poets of the Pre-Raphaelite Brotherhood. From 1900, his poetry grew more physical and realistic. He largely renounced the transcendental beliefs of his youth, though he remained preoccupied with physical and spiritual masks, as well as with cyclical theories of life. In 1923, he was awarded the Nobel Prize in Literature."
  )

Poet.create(
  name: "Czeslaw Milosz",
  year_of_birth: 1911,
  biography: "Czesław Miłosz ([ˈt͡ʂɛswaf ˈmiwɔʂ] (About this sound listen); 30 June 1911 – 14 August 2004) was a Polish poet, prose writer, translator and diplomat. His World War II-era sequence The World is a collection of twenty 'naïve' poems. Following the war, he served as Polish cultural attaché in Paris and Washington, D.C., then in 1951 defected to the West. His nonfiction book The Captive Mind (1953) became a classic of anti-Stalinism. From 1961 to 1998 he was a professor of Slavic Languages and Literatures at the University of California, Berkeley.

He became a U.S. citizen in 1970. In 1978 he was awarded the Neustadt International Prize for Literature, and in 1980 the Nobel Prize in Literature. In 1999 he was named a Puterbaugh Fellow. After the fall of the Iron Curtain, he divided his time between Berkeley, California, and Kraków, Poland."
  )

Poet.create(
  name: "Robert Bly",
  year_of_birth: 1926,
  biography: "Robert Bly (born December 23, 1926) is an American poet, essayist, activist, and leader of the mythopoetic men's movement. His most commercially successful book to date was Iron John: A Book About Men (1990), a key text of the mythopoetic men's movement, which spent 62 weeks on The New York Times Best Seller list. He won the 1968 National Book Award for Poetry for his book The Light Around the Body."
  )

puts "poets seeded"

puts "seeding poems"

Poem.create(
  title: "High Windows",
  poet_id: 1,
  body:
"When I see a couple of kids
And guess he’s fucking her and she’s
Taking pills or wearing a diaphragm,
I know this is paradise

Everyone old has dreamed of all their lives—
Bonds and gestures pushed to one side
Like an outdated combine harvester,
And everyone young going down the long slide

To happiness, endlessly. I wonder if
Anyone looked at me, forty years back,
And thought, That’ll be the life;
No God any more, or sweating in the dark

About hell and that, or having to hide
What you think of the priest. He
And his lot will all go down the long slide
Like free bloody birds. And immediately

Rather than words comes the thought of high windows:
The sun-comprehending glass,
And beyond it, the deep blue air, that shows
Nothing, and is nowhere, and is endless."
)

Poem.create(
  title: "Snow",
  poet_id: 2,
  body:
"The room was suddenly rich and the great bay-window was
Spawning snow and pink roses against it
Soundlessly collateral and incompatible:
World is suddener than we fancy it.

World is crazier and more of it than we think,
Incorrigibly plural. I peel and portion
A tangerine and spit the pips and feel
The drunkenness of things being various.

And the fire flames with a bubbling sound for world
Is more spiteful and gay than one supposes—
On the tongue on the eyes on the ears in the palms of one's hands—
There is more than glass between the snow and the huge roses."
  )

Poem.create(
  title: "LXXXIX",
  poet_id: 3,
  body:
"When I die, I want your hands on my eyes:
I want the light and the wheat of your beloved hands
to pass their freshness over me once more:
I want to feel the softness that changed my destiny.

I want you to live while I wait for you, asleep.
I want your ears still to hear the wind, I want you
to sniff the sea's aroma that we loved together,
to continue to walk on the sand we walk on.

I want what I love to continue to live,
and you whom I love and sang above everything else
to continue to flourish, full-flowered:

so that you can reach everything my love directs you to,
so that my shadow can travel along in your hair,
so that everything can learn the reason for my song."
  )

Poem.create(
  title: "Ithaka",
  poet_id: 4,
  body:
"As you set out for Ithaka
hope the voyage is a long one,
full of adventure, full of discovery.
Laistrygonians and Cyclops,
angry Poseidon—don’t be afraid of them:
you’ll never find things like that on your way
as long as you keep your thoughts raised high,
as long as a rare excitement
stirs your spirit and your body.
Laistrygonians and Cyclops,
wild Poseidon—you won’t encounter them
unless you bring them along inside your soul,
unless your soul sets them up in front of you.

Hope the voyage is a long one.
May there be many a summer morning when,
with what pleasure, what joy,
you come into harbors seen for the first time;
may you stop at Phoenician trading stations
to buy fine things,
mother of pearl and coral, amber and ebony,
sensual perfume of every kind—
as many sensual perfumes as you can;
and may you visit many Egyptian cities
to gather stores of knowledge from their scholars.

Keep Ithaka always in your mind.
Arriving there is what you are destined for.
But do not hurry the journey at all.
Better if it lasts for years,
so you are old by the time you reach the island,
wealthy with all you have gained on the way,
not expecting Ithaka to make you rich.

Ithaka gave you the marvelous journey.
Without her you would not have set out.
She has nothing left to give you now.

And if you find her poor, Ithaka won’t have fooled you.
Wise as you will have become, so full of experience,
you will have understood by then what these Ithakas mean."
  )

Poem.create(
  title: "Tulips",
  poet_id: 5,
  body:
"The tulips are too excitable, it is winter here.
Look how white everything is, how quiet, how snowed-in.
I am learning peacefulness, lying by myself quietly
As the light lies on these white walls, this bed, these hands.
I am nobody; I have nothing to do with explosions.
I have given my name and my day-clothes up to the nurses
And my history to the anesthetist and my body to surgeons.

They have propped my head between the pillow and the sheet-cuff
Like an eye between two white lids that will not shut.
Stupid pupil, it has to take everything in.
The nurses pass and pass, they are no trouble,
They pass the way gulls pass inland in their white caps,
Doing things with their hands, one just the same as another,
So it is impossible to tell how many there are.

My body is a pebble to them, they tend it as water
Tends to the pebbles it must run over, smoothing them gently.
They bring me numbness in their bright needles, they bring me sleep.
Now I have lost myself I am sick of baggage——
My patent leather overnight case like a black pillbox,
My husband and child smiling out of the family photo;
Their smiles catch onto my skin, little smiling hooks.

I have let things slip, a thirty-year-old cargo boat
stubbornly hanging on to my name and address.
They have swabbed me clear of my loving associations.
Scared and bare on the green plastic-pillowed trolley
I watched my teaset, my bureaus of linen, my books
Sink out of sight, and the water went over my head.
I am a nun now, I have never been so pure.

I didn’t want any flowers, I only wanted
To lie with my hands turned up and be utterly empty.
How free it is, you have no idea how free——
The peacefulness is so big it dazes you,
And it asks nothing, a name tag, a few trinkets.
It is what the dead close on, finally; I imagine them
Shutting their mouths on it, like a Communion tablet.

The tulips are too red in the first place, they hurt me.
Even through the gift paper I could hear them breathe
Lightly, through their white swaddlings, like an awful baby.
Their redness talks to my wound, it corresponds.
They are subtle : they seem to float, though they weigh me down,
Upsetting me with their sudden tongues and their color,
A dozen red lead sinkers round my neck.

Nobody watched me before, now I am watched.
The tulips turn to me, and the window behind me
Where once a day the light slowly widens and slowly thins,
And I see myself, flat, ridiculous, a cut-paper shadow
Between the eye of the sun and the eyes of the tulips,
And I have no face, I have wanted to efface myself.
The vivid tulips eat my oxygen.

Before they came the air was calm enough,
Coming and going, breath by breath, without any fuss.
Then the tulips filled it up like a loud noise.
Now the air snags and eddies round them the way a river
Snags and eddies round a sunken rust-red engine.
They concentrate my attention, that was happy
Playing and resting without committing itself.

The walls, also, seem to be warming themselves.
The tulips should be behind bars like dangerous animals;
They are opening like the mouth of some great African cat,
And I am aware of my heart: it opens and closes
Its bowl of red blooms out of sheer love of me.
The water I taste is warm and salt, like the sea,
And comes from a country far away as health."
  )

Poem.create(
  title: "Not Waving, But Drowning",
  poet_id: 6,
  body:
"Nobody heard him, the dead man,
But still he lay moaning:
I was much further out than you thought
And not waving but drowning.

Poor chap, he always loved larking
And now he’s dead
It must have been too cold for him his heart gave way,
They said.

Oh, no no no, it was too cold always
(Still the dead one lay moaning)
I was much too far out all my life
And not waving but drowning."
  )

Poem.create(
  title: "The Negro Speaks of Rivers",
  poet_id: 7,
  body:
"I’ve known rivers:
I’ve known rivers ancient as the world and older than the
     flow of human blood in human veins.

My soul has grown deep like the rivers.

I bathed in the Euphrates when dawns were young.
I built my hut near the Congo and it lulled me to sleep.
I looked upon the Nile and raised the pyramids above it.
I heard the singing of the Mississippi when Abe Lincoln
     went down to New Orleans, and I’ve seen its muddy
     bosom turn all golden in the sunset.

I’ve known rivers:
Ancient, dusky rivers.

My soul has grown deep like the rivers."
  )

Poem.create(
  title: "Love After Love",
  poet_id: 8,
  body:
"The time will come
when, with elation
you will greet yourself arriving
at your own door, in your own mirror
and each will smile at the other's welcome,

and say, sit here. Eat.
You will love again the stranger who was your self.
Give wine. Give bread. Give back your heart
to itself, to the stranger who has loved you

all your life, whom you ignored
for another, who knows you by heart.
Take down the love letters from the bookshelf,

the photographs, the desperate notes,
peel your own image from the mirror.
Sit. Feast on your life. "
  )

Poem.create(
  title: "Sailing To Byzantium",
  poet_id: 9,
  body:
"That is no country for old men. The young
In one another's arms, birds in the trees
– Those dying generations – at their song,
The salmon‐falls, the mackerel‐crowded seas,
Fish, flesh, or fowl, commend all summer long
Whatever is begotten, born, and dies.
Caught in that sensual music all neglect
Monuments of unageing intellect.

An aged man is but a paltry thing,
A tattered coat upon a stick, unless
Soul clap its hands and sing, and louder sing
For every tatter in its mortal dress,
Nor is there singing school but studying
Monuments of its own magnificence;
And therefore I have sailed the seas and come
To the holy city of Byzantium.

O sages standing in God's holy fire
As in the gold mosaic of a wall,
Come from the holy fire, perne in a gyre,
And be the singing‐masters of my soul.
Consume my heart away; sick with desire
And fastened to a dying animal
It knows not what it is; and gather me
Into the artifice of eternity.

Once out of nature I shall never take
My bodily form from any natural thing,
But such a form as Grecian goldsmiths make
Of hammered gold and gold enamelling
To keep a drowsy Emperor awake;
Or set upon a golden bough to sing
To lords and ladies of Byzantium
Of what is past, or passing, or to come."
  )

Poem.create(
  title: "Love",
  poet_id: 10,
  body:
"Love means to learn to look at yourself
The way one looks at distant things
For you are only one thing among many.
And whoever sees that way heals his heart,
Without knowing it, from various ills—
A bird and a tree say to him: Friend.

Then he wants to use himself and things
So that they stand in the glow of ripeness.
It doesn’t matter whether he knows what he serves:
Who serves best doesn’t always understand."
  )

Poem.create(
  title: "The Third Body",
  poet_id: 11,
  body:
"A man and a woman sit near each other, and they do
  not long
At this moment to be older, or younger, or born
In any other nation, or any other time, or any other
  place.
They are content to be where they are, talking or not
  talking.
Their breaths together feed someone whom we do
  not know.
The man sees the way his fingers move;
He sees her hands close around a book she hands to
  him.
They obey a third body that they share in common.
They have promised to love that body.
Age may come; parting may come; death will come!
A man and a woman sit near each other;
As they breathe they feed someone we do not know,
Someone we know of, whom we have never seen."
  )

puts "poems seeded"
