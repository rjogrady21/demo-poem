require 'json'
require 'open-uri'

puts 'Cleaning database...'
Categorisation.destroy_all
Category.destroy_all
Poem.destroy_all
Poet.destroy_all

puts 'Creating categories'

puts 'Creating poets'

puts "creating categories"

categories = ["Time & Change", "Happiness & Joy", "Identity", "New Beginnings", "Family & Home", "Youth & Coming of Age", "Lust & Sexuality", "Nature & Seasons", "Fear", "Friendship", "Forgiveness & Atonement", "Death & Loss", "Travel & Adventure", "Spirituality", "Peace & Calm", "Conflict & Struggle", "Amusement & Satire", "Loneliness & Depression", "Inspiration & Hope", "Arts & Culture", "Politics & History", "Social Commentary", "Love & Admiration"]
categories.sort.each do |category|
  Category.create(name: category)
end
Category.create(name: "Growing Old")
Category.create(name: "Solitude & Atonement")

puts "Categories created"

puts "creating Philip Larkin"
Poet.create(
  name: "Philip Larkin",
  year_of_birth: 1922,
  biography: "Philip Arthur Larkin CH CBE FRSL (9 August 1922 – 2 December 1985) was an English poet, novelist and librarian. His first book of poetry, The North Ship, was published in 1945, followed by two novels, Jill (1946) and A Girl in Winter (1947), and he came to prominence in 1955 with the publication of his second collection of poems, The Less Deceived, followed by The Whitsun Weddings (1964) and High Windows (1974). He contributed to The Daily Telegraph as its jazz critic from 1961 to 1971, articles gathered in All What Jazz: A Record Diary 1961–71 (1985), and he edited The Oxford Book of Twentieth Century English Verse (1973). His many honours include the Queen's Gold Medal for Poetry. He was offered, but declined, the position of Poet Laureate in 1984, following the death of Sir John Betjeman.

After graduating from Oxford in 1943 with a first in English language and literature, Larkin became a librarian. It was during the thirty years he worked with distinction as university librarian at the Brynmor Jones Library at the University of Hull that he produced the greater part of his published work. His poems are marked by what Andrew Motion calls 'a very English, glum accuracy about emotions, places, and relationships', and what Donald Davie described as 'lowered sights and diminished expectations'. Eric Homberger (echoing Randall Jarrell) called him 'the saddest heart in the post-war supermarket'—Larkin himself said that deprivation for him was what daffodils were for Wordsworth. Influenced by W. H. Auden, W. B. Yeats, and Thomas Hardy, his poems are highly structured but flexible verse forms. They were described by Jean Hartley, the ex-wife of Larkin's publisher George Hartley (the Marvell Press), as a 'piquant mixture of lyricism and discontent', though anthologist Keith Tuma writes that there is more to Larkin's work than its reputation for dour pessimism suggests."
  )

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

Categorisation.create(poem_id: 1,category_id: 20)
Categorisation.create(poem_id: 1,category_id: 9)
Categorisation.create(poem_id: 1,category_id: 19)

puts "creating Louis MacNeice"
Poet.create(
  name: "Louis MacNeice",
  year_of_birth: 1907,
  biography: "Frederick Louis MacNeice CBE (12 September 1907 – 3 September 1963) was an Irish poet and playwright. He was part of the generation of the Auden Group that included W. H. Auden, Stephen Spender and Cecil Day-Lewis. MacNeice's body of work was widely appreciated by the public during his lifetime, due in part to his relaxed, but socially and emotionally aware style. Never as overtly (or simplistically) political as some of his contemporaries, his work shows a humane opposition to totalitarianism as well as an acute awareness of his Irish roots."
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

Categorisation.create(poem_id: 2, category_id: 21)

Poet.create(
  name: "Pablo Neruda",
  year_of_birth: 1904,
  biography: "Ricardo Eliécer Neftalí Reyes Basoalto (12 July 1904 – 23 September 1973), better known by his pen name and, later, legal name Pablo Neruda (/nəˈruːdə/;[1] Spanish: [ˈpaβlo neˈɾuða]), was a Chilean poet-diplomat and politician. Neruda became known as a poet when he was 13 years old, and wrote in a variety of styles, including surrealist poems, historical epics, overtly political manifestos, a prose a,utobiography, and passionate love poems such as the ones in his collection Twenty Love Poems and a Song of Despair (1924). He won the Nobel Prize for Literature in 1971."
  )

puts "creating Pablo Neruda"
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

Categorisation.create(poem_id: 3,category_id: 13)
Categorisation.create(poem_id: 3,category_id: 4)

puts "creating C.P. Cavafy"
Poet.create(
  name: "C.P. Cavafy",
  year_of_birth: 1863,
  biography: "Constantine Peter Cavafy (/kəˈvɑːfɪ/; also known as Konstantin or Konstantinos Petrou Kavafis; Greek: Κωνσταντίνος Π. Καβάφης; April 29 (April 17, OS), 1863 – April 29, 1933) was an Egyptian Greek poet, journalist and civil servant. His consciously individual style earned him a place among the most important figures not only in Greek poetry, but in Western poetry as well.

Cavafy wrote 154 poems, while dozens more remained incomplete or in sketch form. During his lifetime, he consistently refused to formally publish his work and preferred to share it through local newspapers and magazines, or even print it out himself and give it away to anyone interested. His most important poems were written after his fortieth birthday, and officially published two years after his death."
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

Categorisation.create(poem_id: 4,category_id: 22)
Categorisation.create(poem_id: 4,category_id: 21)
Categorisation.create(poem_id: 4,category_id: 10)

puts "creating Sylvia Plath"
Poet.create(
  name: "Sylvia Plath",
  year_of_birth: 1932,
  biography: "Sylvia Plath (/plæθ/; October 27, 1932 – February 11, 1963) was an American poet, novelist, and short-story writer. Born in Boston, she studied at Smith College and Newnham College at the University of Cambridge before receiving acclaim as a poet and writer. She married fellow poet Ted Hughes in 1956, and they lived together in the United States and then in England. They had two children, Frieda and Nicholas, before separating in 1962.

Plath was clinically depressed for most of her adult life, and was treated multiple times with electroconvulsive therapy (ECT). She committed suicide in 1963.

Plath is credited with advancing the genre of confessional poetry and is best known for two of her published collections, The Colossus and Other Poems and Ariel, and The Bell Jar, a semi-autobiographical novel published shortly before her death. In 1982, she won a posthumous Pulitzer Prize for The Collected Poems."

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

Categorisation.create(poem_id: 5,category_id: 10)
Categorisation.create(poem_id: 5,category_id: 12)

puts "creating Stevie Smith"
Poet.create(
  name: "Stevie Smith",
  year_of_birth: 1902,
  biography: "Smith's first volume of poetry, the self-illustrated A Good Time Was Had By All, was published in 1937 and established her as a poet. Soon her poems were found in periodicals. Her style was often very dark; her characters were perpetually saying 'goodbye' to their friends or welcoming death. At the same time her work has an eerie levity and can be very funny though it is neither light nor whimsical. 'Stevie Smith often uses the word 'peculiar' and it is the best word to describe her effects' (Hermione Lee). She was never sentimental, undercutting any pathetic effects with the ruthless honesty of her humour.

'A good time was had by all' itself became a catch phrase, still occasionally used to this day. Smith said she got the phrase from parish magazines, where descriptions of church picnics often included this phrase. This saying has become so familiar that it is recognised even by those who are unaware of its origin. Variations appear in pop culture, including 'Being for the Benefit of Mr. Kite!' by the Beatles.

Though her poems were remarkably consistent in tone and quality throughout her life, their subject matter changed over time, with less of the outrageous wit of her youth and more reflection on suffering, faith and the end of life. Her best-known poem is 'Not Waving but Drowning'. She was awarded the Cholmondeley Award for Poets in 1966 and won the Queen's Gold Medal for poetry in 1969. She published nine volumes of poems in her lifetime (three more were released posthumously)."
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

Categorisation.create(poem_id: 6,category_id: 12)
Categorisation.create(poem_id: 6,category_id: 1)

puts "creating Langston Hughes"
Poet.create(
  name: "Langston Hughes",
  year_of_birth: 1902,
  biography: "James Mercer Langston Hughes (February 1, 1902 – May 22, 1967) was an American poet, social activist, novelist, playwright, and columnist from Joplin, Missouri.

He was one of the earliest innovators of the then-new literary art form called jazz poetry. Hughes is best known as a leader of the Harlem Renaissance in New York City. He famously wrote about the period that 'the negro was in vogue', which was later paraphrased as 'when Harlem was in vogue'."
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

Categorisation.create(poem_id: 7,category_id: 19)
Categorisation.create(poem_id: 7,category_id: 10)
Categorisation.create(poem_id: 7,category_id: 22)

puts "creating Derek Walcott"
Poet.create(
  name: "Derek Walcott",
  year_of_birth: 1930,
  biography: "Sir Derek Alton Walcott, KCSL, OBE, OCC (23 January 1930 – 17 March 2017) was a Saint Lucian poet and playwright. He received the 1992 Nobel Prize in Literature. He was the University of Alberta's first distinguished scholar in residence, where he taught undergraduate and graduate writing courses. He also served as Professor of Poetry at the University of Essex from 2010 to 2013. His works include the Homeric epic poem Omeros (1990), which many critics view 'as Walcott's major achievement.' In addition to winning the Nobel Prize, Walcott received many literary awards over the course of his career, including an Obie Award in 1971 for his play Dream on Monkey Mountain, a MacArthur Foundation 'genius' award, a Royal Society of Literature Award, the Queen's Medal for Poetry, the inaugural OCM Bocas Prize for Caribbean Literature, the 2011 T. S. Eliot Prize for his book of poetry White Egrets and the Griffin Trust For Excellence In Poetry Lifetime Recognition Award in 2015."
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

Categorisation.create(poem_id: 8,category_id: 13)
Categorisation.create(poem_id: 8,category_id: 7)
Categorisation.create(poem_id: 8,category_id: 16)
Categorisation.create(poem_id: 8,category_id: 21)
Categorisation.create(poem_id: 8,category_id: 10)

puts "creating W.B. Yeats"
Poet.create(
  name: "W.B. Yeats",
  year_of_birth: 1865,
  biography: "William Butler Yeats[a] (13 June 1865 – 28 January 1939) was an Irish poet and one of the foremost figures of 20th-century literature. A pillar of both the Irish and British literary establishments, he helped to found the Abbey Theatre, and in his later years served as an Irish Senator for two terms. Yeats was a driving force behind the Irish Literary Revival along with Lady Gregory, Edward Martyn and others.

He was born in Sandymount, Ireland and educated there and in London. He spent childhood holidays in County Sligo and studied poetry from an early age when he became fascinated by Irish legends and the occult. These topics feature in the first phase of his work, which lasted roughly until the turn of the 20th century. His earliest volume of verse was published in 1889, and its slow-paced and lyrical poems display Yeats's debts to Edmund Spenser, Percy Bysshe Shelley, and the poets of the Pre-Raphaelite Brotherhood. From 1900, his poetry grew more physical and realistic. He largely renounced the transcendental beliefs of his youth, though he remained preoccupied with physical and spiritual masks, as well as with cyclical theories of life. In 1923, he was awarded the Nobel Prize in Literature."
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

Categorisation.create(poem_id: 9,category_id: 21)
Categorisation.create(poem_id: 9,category_id: 22)

puts "creating Czeslaw Milosz"
Poet.create(
  name: "Czeslaw Milosz",
  year_of_birth: 1911,
  biography: "Czesław Miłosz ([ˈt͡ʂɛswaf ˈmiwɔʂ] (About this sound listen); 30 June 1911 – 14 August 2004) was a Polish poet, prose writer, translator and diplomat. His World War II-era sequence The World is a collection of twenty 'naïve' poems. Following the war, he served as Polish cultural attaché in Paris and Washington, D.C., then in 1951 defected to the West. His nonfiction book The Captive Mind (1953) became a classic of anti-Stalinism. From 1961 to 1998 he was a professor of Slavic Languages and Literatures at the University of California, Berkeley.

He became a U.S. citizen in 1970. In 1978 he was awarded the Neustadt International Prize for Literature, and in 1980 the Nobel Prize in Literature. In 1999 he was named a Puterbaugh Fellow. After the fall of the Iron Curtain, he divided his time between Berkeley, California, and Kraków, Poland."
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

Categorisation.create(poem_id: 10,category_id: 13)
Categorisation.create(poem_id: 10,category_id: 10)
Categorisation.create(poem_id: 10,category_id: 9)

puts "creating Robert Bly"
Poet.create(
  name: "Robert Bly",
  year_of_birth: 1926,
  biography: "Robert Bly (born December 23, 1926) is an American poet, essayist, activist, and leader of the mythopoetic men's movement. His most commercially successful book to date was Iron John: A Book About Men (1990), a key text of the mythopoetic men's movement, which spent 62 weeks on The New York Times Best Seller list. He won the 1968 National Book Award for Poetry for his book The Light Around the Body."
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

Categorisation.create(poem_id: 11,category_id: 13)
Categorisation.create(poem_id: 11,category_id: 8)

Poem.create(
  title: "Wants",
  poet_id: 1,
  body: "Beyond all this, the wish to be alone:
However the sky grows dark with invitation-cards
However we follow the printed directions of sex
However the family is photographed under the flag-staff -
Beyond all this, the wish to be alone.

Beneath it all, the desire for oblivion runs:
Despite the artful tensions of the calendar,
The life insurance, the tabled fertility rites,
The costly aversion of the eyes away from death -
Beneath it all, the desire for oblivion runs."
)

Categorisation.create(poem_id: 12,category_id: 12)
Categorisation.create(poem_id: 12,category_id: 17)



Poem.create(
  title: "Days",
  poet_id: 1,
  body: "What are days for?
Days are where we live.
They come, they wake us
Time and time over.
They are to be happy in:
Where can we live but days?

Ah, solving that question
Brings the priest and the doctor
In their long coats
Running over the fields."
)

Categorisation.create(poem_id: 13,category_id: 21)
Categorisation.create(poem_id: 13,category_id: 24)


Poem.create(
  title: "Vers de Société",
  poet_id: 1,
  body: "My wife and I have asked a crowd of craps
To come and waste their time and ours: perhaps
You’d care to join us? In a pig’s arse, friend.
Day comes to an end.
The gas fire breathes, the trees are darkly swayed.
And so Dear Warlock-Williams: I’m afraid—

Funny how hard it is to be alone.
I could spend half my evenings, if I wanted,
Holding a glass of washing sherry, canted
Over to catch the drivel of some bitch
Who’s read nothing but Which;
Just think of all the spare time that has flown

Straight into nothingness by being filled
With forks and faces, rather than repaid
Under a lamp, hearing the noise of wind,
And looking out to see the moon thinned
To an air-sharpened blade.
A life, and yet how sternly it’s instilled

All solitude is selfish. No one now
Believes the hermit with his gown and dish
Talking to God (who’s gone too); the big wish
Is to have people nice to you, which means
Doing it back somehow.
Virtue is social. Are, then, these routines

Playing at goodness, like going to church?
Something that bores us, something we don’t do well
(Asking that ass about his fool research)
But try to feel, because, however crudely,
It shows us what should be?
Too subtle, that. Too decent, too. Oh hell,

Only the young can be alone freely.
The time is shorter now for company,
And sitting by a lamp more often brings
Not peace, but other things.
Beyond the light stand failure and remorse
Whispering Dear Warlock-Williams: Why, of course—"
)

Categorisation.create(poem_id: 14,category_id: 25)
Categorisation.create(poem_id: 14,category_id: 24)
Categorisation.create(poem_id: 14,category_id: 19)



Poem.create(
  title: "Sad Steps",
  poet_id: 1,
  body: "Groping back to bed after a piss
I part thick curtains, and am startled by
The rapid clouds, the moon’s cleanliness.

Four o’clock: wedge-shadowed gardens lie
Under a cavernous, a wind-picked sky.
There’s something laughable about this,

The way the moon dashes through clouds that blow
Loosely as cannon-smoke to stand apart
(Stone-coloured light sharpening the roofs below)

High and preposterous and separate—
Lozenge of love! Medallion of art!
O wolves of memory! Immensements! No,

One shivers slightly, looking up there.
The hardness and the brightness and the plain
Far-reaching singleness of that wide stare

Is a reminder of the strength and pain
Of being young; that it can’t come again,
But is for others undiminished somewhere."
)

Categorisation.create(poem_id: 15,category_id: 24)
Categorisation.create(poem_id: 15,category_id: 25)
Categorisation.create(poem_id: 15,category_id: 21)

Poem.create(
  title: "Aubade",
  poet_id: 1,
  body: "I work all day, and get half-drunk at night.
Waking at four to soundless dark, I stare.
In time the curtain-edges will grow light.
Till then I see what’s really always there:
Unresting death, a whole day nearer now,
Making all thought impossible but how
And where and when I shall myself die.
Arid interrogation: yet the dread
Of dying, and being dead,
Flashes afresh to hold and horrify.

The mind blanks at the glare. Not in remorse
—The good not done, the love not given, time
Torn off unused—nor wretchedly because
An only life can take so long to climb
Clear of its wrong beginnings, and may never;
But at the total emptiness for ever,
The sure extinction that we travel to
And shall be lost in always. Not to be here,
Not to be anywhere,
And soon; nothing more terrible, nothing more true.

This is a special way of being afraid
No trick dispels. Religion used to try,
That vast moth-eaten musical brocade
Created to pretend we never die,
And specious stuff that says No rational being
Can fear a thing it will not feel, not seeing
That this is what we fear—no sight, no sound,
No touch or taste or smell, nothing to think with,
Nothing to love or link with,
The anaesthetic from which none come round.

And so it stays just on the edge of vision,
A small unfocused blur, a standing chill
That slows each impulse down to indecision.
Most things may never happen: this one will,
And realisation of it rages out
In furnace-fear when we are caught without
People or drink. Courage is no good:
It means not scaring others. Being brave
Lets no one off the grave.
Death is no different whined at than withstood.

Slowly light strengthens, and the room takes shape.
It stands plain as a wardrobe, what we know,
Have always known, know that we can’t escape,
Yet can’t accept. One side will have to go.
Meanwhile telephones crouch, getting ready to ring
In locked-up offices, and all the uncaring
Intricate rented world begins to rouse.
The sky is white as clay, with no sun.
Work has to be done.
Postmen like doctors go from house to house."
  )

Categorisation.create(poem_id: 16,category_id: 4)
Categorisation.create(poem_id: 16,category_id: 12)
Categorisation.create(poem_id: 16,category_id: 24)

Poem.create(
  title: "Entirely",
  poet_id: 2,
  body: "If we could get the hang of it entirely
   It would take too long;
All we know is the splash of words in passing
   And falling twigs of song,
And when we try to eavesdrop on the great
   Presences it is rarely
That by a stroke of luck we can appropriate
   Even a phrase entirely.

If we could find our happiness entirely
   In somebody else’s arms
We should not fear the spears of the spring nor the city’s
   Yammering fire alarms
But, as it is, the spears each year go through
   Our flesh and almost hourly
Bell or siren banishes the blue
   Eyes of Love entirely.

And if the world were black or white entirely
   And all the charts were plain
Instead of a mad weir of tigerish waters,
   A prism of delight and pain,
We might be surer where we wished to go
   Or again we might be merely
Bored but in brute reality there is no
   Road that is right entirely."
  )

Categorisation.create(poem_id: 17,category_id: 21)
Categorisation.create(poem_id: 17,category_id: 9)


Poem.create(
  title: "Prayer Before Birth",
  poet_id: 2,
  body: "I am not yet born; O hear me.
Let not the bloodsucking bat or the rat or the stoat or the
club-footed ghoul come near me.

I am not yet born, console me.
I fear that the human race may with tall walls wall me,
with strong drugs dope me, with wise lies lure me,
on black racks rack me, in blood-baths roll me.

I am not yet born; provide me
With water to dandle me, grass to grow for me, trees to talk
to me, sky to sing to me, birds and a white light
in the back of my mind to guide me.

I am not yet born; forgive me
For the sins that in me the world shall commit, my words
when they speak me, my thoughts when they think me,
my treason engendered by traitors beyond me,
my life when they murder by means of my
hands, my death when they live me.

I am not yet born; rehearse me
In the parts I must play and the cues I must take when
old men lecture me, bureaucrats hector me, mountains
frown at me, lovers laugh at me, the white
waves call me to folly and the desert calls
me to doom and the beggar refuses
my gift and my children curse me.

I am not yet born; O hear me,
Let not the man who is beast or who thinks he is God
come near me.

I am not yet born; O fill me
With strength against those who would freeze my
humanity, would dragoon me into a lethal automaton,
would make me a cog in a machine, a thing with
one face, a thing, and against all those
who would dissipate my entirety, would
blow me like thistledown hither and
thither or hither and thither
like water held in the
hands would spill me.

Let them not make me a stone and let them not spill me.
Otherwise kill me. "
  )

Categorisation.create(poem_id: 18,category_id: 16)
Categorisation.create(poem_id: 18,category_id: 5)
Categorisation.create(poem_id: 18,category_id: 11)
Categorisation.create(poem_id: 18,category_id: 3)
Categorisation.create(poem_id: 18,category_id: 5)


Poem.create(
  title: "Night Club",
  poet_id: 2,
  body: "After the legshows and the brandies
And all the pick-me-ups for tired
Men there is a feeling
Something more is required.

The lights go down and eyes
Look up across the room;
Salome comes in, bearing
The head of God knows whom."
  )

Categorisation.create(poem_id: 19,category_id: 12)
Categorisation.create(poem_id: 19,category_id: 14)


Poem.create(
  title: "Meeting Point",
  poet_id: 2,
  body: "Time was away and somewhere else,
There were two glasses and two chairs
And two people with the one pulse
(Somebody stopped the moving stairs):
Time was away and somewhere else.

And they were neither up nor down;
The stream’s music did not stop
Flowing through heather, limpid brown,
Although they sat in a coffee shop
And they were neither up nor down.

The bell was silent in the air
Holding its inverted poise—
Between the clang and clang a flower,
A brazen calyx of no noise:
The bell was silent in the air.

The camels crossed the miles of sand
That stretched around the cups and plates;
The desert was their own, they planned
To portion out the stars and dates:
The camels crossed the miles of sand.

Time was away and somewhere else.
The waiter did not come, the clock
Forgot them and the radio waltz
Came out like water from a rock:
Time was away and somewhere else.

Her fingers flicked away the ash
That bloomed again in tropic trees:
Not caring if the markets crash
When they had forests such as these,
Her fingers flicked away the ash.

God or whatever means the Good
Be praised that time can stop like this,
That what the heart has understood
Can verify in the body’s peace
God or whatever means the Good.

Time was away and she was here
And life no longer what it was,
The bell was silent in the air
And all the room one glow because
Time was away and she was here."
  )

Categorisation.create(poem_id: 20,category_id: 13)
Categorisation.create(poem_id: 20,category_id: 9)
Categorisation.create(poem_id: 20,category_id: 17)
Categorisation.create(poem_id: 20,category_id: 21)


Poem.create(
  title: "Sweetness, Always",
  poet_id: 3,
  body: "Why such harsh machinery?
Why, to write down the stuff and people of everyday,
must poems be dressed up in gold,
or in old and fearful stone?

I want verses of felt or feather which scarcely weigh,
mild verses
with the intimacy of beds
where people have loved and dreamed.
I want poems stained
by hands and everydayness.

Verses of pastry which melt
into milk and sugar in the mouth,
air and water to drink,
the bites and kisses of love.
I long for eatable sonnets,
poems of honey and flour.

Vanity keeps prodding us
to lift ourselves skyward
or to make deep and useless
tunnels underground.
So we forget the joyous
love-needs of our bodies.
We forget about pastries.
We are not feeding the world.

In Madras a long time since,
I saw a sugary pyramid,
a tower of confectionery -
one level after another,
and in the construction, rubies,
and other blushing delights,
medieval and yellow.

Someone dirtied his hands
to cook up so much sweetness.

Brother poets from here
and there, from earth and sky,
from Medellin, from Veracruz,
Abyssinia, Antofagasta,
do you know the recipe for honeycombs?

Let's forget about all that stone.

Let your poetry fill up
the equinoctial pastry shop
our mouths long to devour -
all the children's mouths
and the poor adults' also.
Don't go on without seeing,
relishing, understanding
all these hearts of sugar.

Don't be afraid of sweetness.

With or without us,
sweetness will go on living
and is infinitely alive,
forever being revived,
for it's in a man's mouth,
whether he's eating or singing,
that sweetness has its place."
  )

Categorisation.create(poem_id: 21,category_id: 2)
Categorisation.create(poem_id: 21,category_id: 9)


Poem.create(
  title: "Births",
  poet_id: 3,
  body: "We will never have any memory of dying.

We were so patient
about our being,
noting down
the numbers, the days,
the years and the months,
the hair, the mouths we kissed,
but that moment of dying:
we surrender it without a note,
we leave it to others as remembrance,
or we leave it simply to water,
to water, to air, to time.
Nor do we even keep
the memory of our birth,
though being born was important and fresh;
and now you don’t even remember one detail,
you haven’t kept even a branch
of the first light.

It’s well known that we are born.

It’s well known that in the room
or in the wood
or in the hut in the fishermen’s district
or in the crackling canefields
there is a very unusual silence,
a moment solemn as wood,
and a woman gets ready to give birth.

It’s well known that we were born.

But of the profound jolt
from not being to existing, to having hands,
to seeing, to having eyes,
to eating and crying and overflowing
and loving and loving and suffering and suffering,
of that transition or shudder
of an electric essence that takes on
one body more, like a living cup,
and of that disinhabited woman,
the mother who is left there with her blood
and her torn fullness,
and her end and its beginning, and the disorder
that troubles the pulse, the floor, the blankets
until everything gathers and adds
one more knot to the thread of life:
nothing, there is nothing left in your memory
of the fierce sea that lifted a wave
and knocked down a dark apple from the tree.

The only thing you remember is your life."
)

Categorisation.create(poem_id: 22,category_id: 4)
Categorisation.create(poem_id: 22,category_id: 16)
Categorisation.create(poem_id: 22,category_id: 25)



Poem.create(
  title: "The City",
  poet_id: 4,
  body: "You said: “I’ll go to another country, go to another shore,
find another city better than this one.
Whatever I try to do is fated to turn out wrong
and my heart lies buried like something dead.
How long can I let my mind moulder in this place?
Wherever I turn, wherever I look,
I see the black ruins of my life, here,
where I’ve spent so many years, wasted them, destroyed them totally.”

You won’t find a new country, won’t find another shore.
This city will always pursue you.
You’ll walk the same streets, grow old
in the same neighborhoods, turn gray in these same houses.
You’ll always end up in this city. Don’t hope for things elsewhere:
there’s no ship for you, there’s no road.
Now that you’ve wasted your life here, in this small corner,
you’ve destroyed it everywhere in the world."
  )

Categorisation.create(poem_id: 23,category_id: 22)
Categorisation.create(poem_id: 23,category_id: 24)
Categorisation.create(poem_id: 23,category_id: 10)



Poem.create(
  title: "Candles",
  poet_id: 4,
  body: "Days to come stand in front of us
like a row of burning candles—
golden, warm, and vivid candles.

Days gone by fall behind us,
a gloomy line of burnt-out candles;
the nearest are still smoking,
cold, melted, and bent.

I don’t want to look at them: their shape saddens me,
and it saddens me to remember their original light.
I look ahead at my burning candles.

I don’t want to turn, don't want to see, terrified
how quickly that dark line gets longer,
how quickly one more dead candle joins another."
  )

Categorisation.create(poem_id: 24,category_id: 21)
Categorisation.create(poem_id: 24,category_id: 24)
Categorisation.create(poem_id: 24,category_id: 6)



Poem.create(
  title: "Daddy",
  poet_id: 5,
  body: "You do not do, you do not do
Any more, black shoe
In which I have lived like a foot
For thirty years, poor and white,
Barely daring to breathe or Achoo.

Daddy, I have had to kill you.
You died before I had time——
Marble-heavy, a bag full of God,
Ghastly statue with one gray toe
Big as a Frisco seal

And a head in the freakish Atlantic
Where it pours bean green over blue
In the waters off beautiful Nauset.
I used to pray to recover you.
Ach, du.

In the German tongue, in the Polish town
Scraped flat by the roller
Of wars, wars, wars.
But the name of the town is common.
My Polack friend

Says there are a dozen or two.
So I never could tell where you
Put your foot, your root,
I never could talk to you.
The tongue stuck in my jaw.

It stuck in a barb wire snare.
Ich, ich, ich, ich,
I could hardly speak.
I thought every German was you.
And the language obscene

An engine, an engine
Chuffing me off like a Jew.
A Jew to Dachau, Auschwitz, Belsen.
I began to talk like a Jew.
I think I may well be a Jew.

The snows of the Tyrol, the clear beer of Vienna
Are not very pure or true.
With my gipsy ancestress and my weird luck
And my Taroc pack and my Taroc pack
I may be a bit of a Jew.

I have always been scared of you,
With your Luftwaffe, your gobbledygoo.
And your neat mustache
And your Aryan eye, bright blue.
Panzer-man, panzer-man, O You——

Not God but a swastika
So black no sky could squeak through.
Every woman adores a Fascist,
The boot in the face, the brute
Brute heart of a brute like you.

You stand at the blackboard, daddy,
In the picture I have of you,
A cleft in your chin instead of your foot
But no less a devil for that, no not
Any less the black man who

Bit my pretty red heart in two.
I was ten when they buried you.
At twenty I tried to die
And get back, back, back to you.
I thought even the bones would do.

But they pulled me out of the sack,
And they stuck me together with glue.
And then I knew what to do.
I made a model of you,
A man in black with a Meinkampf look

And a love of the rack and the screw.
And I said I do, I do.
So daddy, I’m finally through.
The black telephone’s off at the root,
The voices just can’t worm through.

If I’ve killed one man, I’ve killed two——
The vampire who said he was you
And drank my blood for a year,
Seven years, if you want to know.
Daddy, you can lie back now.

There’s a stake in your fat black heart
And the villagers never liked you.
They are dancing and stamping on you.
They always knew it was you.
Daddy, daddy, you bastard, I’m through."
  )

Categorisation.create(poem_id: 25,category_id: 5)
Categorisation.create(poem_id: 25,category_id: 23)


Poem.create(
  title: "The Applicant",
  poet_id: 5,
  body: "First, are you our sort of a person?
Do you wear
A glass eye, false teeth or a crutch,
A brace or a hook,
Rubber breasts or a rubber crotch,

Stitches to show something's missing? No, no? Then
How can we give you a thing?
Stop crying.
Open your hand.
Empty? Empty. Here is a hand

To fill it and willing
To bring teacups and roll away headaches
And do whatever you tell it.
Will you marry it?
It is guaranteed

To thumb shut your eyes at the end
And dissolve of sorrow.
We make new stock from the salt.
I notice you are stark naked.
How about this suit——

Black and stiff, but not a bad fit.
Will you marry it?
It is waterproof, shatterproof, proof
Against fire and bombs through the roof.
Believe me, they'll bury you in it.

Now your head, excuse me, is empty.
I have the ticket for that.
Come here, sweetie, out of the closet.
Well, what do you think of that?
Naked as paper to start

But in twenty-five years she'll be silver,
In fifty, gold.
A living doll, everywhere you look.
It can sew, it can cook,
It can talk, talk, talk.

It works, there is nothing wrong with it.
You have a hole, it's a poultice.
You have an eye, it's an image.
My boy, it's your last resort.
Will you marry it, marry it, marry it."
  )

Categorisation.create(poem_id: 26,category_id: 6)

Poem.create(
  title: "The Reason",
  poet_id: 6,
  body: "My life is vile
         I hate it so
         I’ll wait awhile
         And then I’ll go.

         Why wait at all?
         Hope springs alive,
         Good may befall
         I yet may thrive.

It is because I can’t make up my mind
If God is good, impotent or unkind.
"
  )

Categorisation.create(poem_id: 27,category_id: 21)
Categorisation.create(poem_id: 27,category_id: 6)
Categorisation.create(poem_id: 27,category_id: 12)



# Poem.create(
#   title: "",
#   poet_id: ,
#   body: ""
#   )

# Categorisation.create(poem_id: ,category_id: )

# Poem.create(
#   title: "",
#   poet_id: ,
#   body: ""
#   )

# Categorisation.create(poem_id: ,category_id: )

# Poem.create(
#   title: "",
#   poet_id: ,
#   body: ""
#   )

# Categorisation.create(poem_id: ,category_id: )

# Poem.create(
#   title: "",
#   poet_id: ,
#   body: ""
#   )

# Categorisation.create(poem_id: ,category_id: )

# Poem.create(
#   title: "",
#   poet_id: ,
#   body: ""
#   )

# Categorisation.create(poem_id: ,category_id: )

# Poem.create(
#   title: "",
#   poet_id: ,
#   body: ""
#   )

# Categorisation.create(poem_id: ,category_id: )


puts "poems created"



# def scrape_poetry_foundation
# #   # title_array = []
# #   # body_array = []
# #   poet_array = []
#   file = 'poems.json'
#   poem_serialized = open(file).read
#   poems = JSON.parse(poem_serialized)

  # keyword_array = []
  # poems.first(100).each do |poem_hash|
  #   keyword_array << poem_hash["keywords"]
  # end


  # potential_categories = ["Eating", "Drinking", "Religion", "The Spiritual", "Activities", "Eating", "Drinking", "Social Commentaries", "Class", "Activities", "Indoor Activities", "Relationships", "Home Life", "Arts", "Sciences", "Architecture", "Design", "Activities", "Jobs", "Working", "Activities", "Jobs", "Working", "School", "Learning", "Relationships", "Family", "Ancestors", "Arts", "Sciences", "Poetry", "Poets", "Activities", "Jobs", "Working", "Social Commentaries", "Crime", "Punishment", "Activities", "School", "Learning", "Social Commentaries", "Crime", "Punishment", "Activities", "Sports", "Outdoor Activities", "Activities", "Travels", "Journeys", "Arts", "Sciences", "Humor", "Satire", "Social Commentaries", "Class", "Crime", "Punishment", "History", "Politics", "Money", "Economics", "Popular Culture", "Race", "Ethnicity", "Arts", "Sciences", "Language", "Linguistics", "Arts", "Sciences", "Language", "Linguistics", "Poetry", "Poets", "Living", "Birth", "Birthdays", "The Body", "Living", "Coming of Age", "Activities", "Gardening", "Living", "Coming of Age", "Life Choices", "Relationships", "Family", "Ancestors", "Living", "Death", "Living", "Death", "Relationships", "Family", "Ancestors", "Religion", "Judaism", "Arts", "Sciences", "Language", "Linguistics", "Social Commentaries", "History", "Politics", "Living", "Death", "The Mind", "Relationships", "Family", "Ancestors", "Religion", "Judaism", "Social Commentaries", "History", "Politics", "Living", "Growing Old", "Living", "Health", "Illness", "Living", "Life Choices", "Living", "Life Choices", "Relationships", "Family", "Ancestors", "Living", "Life Choices", "Relationships", "Friends", "Enemies", "Arts", "Sciences", "Music", "Living", "Life Choices", "The Body", "Living", "Marriage", "Companionship", "Romantic Love", "Social Commentaries", "War", "Conflict", "Living", "Sorrow", "Grieving", "Living", "Sorrow", "Grieving", "The Mind", "Love", "Heartache", "Loss", "Living", "The Body", "Love", "Desire", "Arts", "Sciences", "Poetry", "Poets", "Living", "The Body", "The Mind", "Living", "The Mind", "Relationships", "Family", "Ancestors", "Social Commentaries", "History", "Politics", "Living", "Youth", "Social Commentaries", "Race", "Ethnicity", "War", "Conflict", "Love", "Desire", "Arts", "Sciences", "Poetry", "Poets", "Love", "Desire", "Romantic Love", "Love", "Unrequited Love", "Nature", "Animals", "Relationships", "Family", "Ancestors", "Relationships", "Family", "Ancestors", "Arts", "Sciences", "Humor", "Satire", "Language", "Linguistics", "Music", "Relationships", "Family", "Ancestors", "Arts", "Sciences", "Music", "Theater", "Dance", "Social Commentaries", "Popular Culture", "Race", "Ethnicity", "Relationships", "Family", "Ancestors", "Friends", "Enemies", "Relationships", "Men", "Women", "Social Commentaries", "Gender", "Sexuality", "Religion", "The Spiritual", "Social Commentaries", "Cities", "Urban Life", "Social Commentaries", "Cities", "Urban Life", "Race", "Ethnicity", "Social Commentaries", "History", "Politics", "Social Commentaries", "History", "Politics", "Race", "Ethnicity", "Social Commentaries", "History", "Politics", "War", "Conflict", "Social Commentaries", "War", "Conflict"]
  # puts potential_categories.uniq.sort

#   poet_name_array.each do |poet|
#     # Poet.create(
#     #   name: poet
#     # )
#   end

  # Create the poem
  # poems_body_array = []
  # poems.each do |poem_hash|
  #   poem_body = poem_hash["body"]

  # end

  # poet_id_array = []
  # poems.each do |poem_hash|
  #   poet_id = Poet.find_by_name(poem_hash["poet"])

  #   # Poem.create(
  #   #   poet_id: poet_id,
  #   #   poem)
  # end
  # puts poet_id_array

  # puts poems_body_array[0]
  # puts poems_body_array[1]

  # getting list of all poets (unique)
  # Insert all of them in the database
  # read all the poems, read the poems
  # for every poem, you find_by_name author => poet_id
  # insert poem




  # poems_poets = []
  # new_poems_array.each do |poem|
  #   poems_poets << poem["poet"]
  # end

  # poet_hash_array

  # poet_hash = Hash.new
  # poet_hash_array = []
  # poet_name_array.each_with_index do |x, index|
  #   new_poet = {x => index + 1}
  #   poet_hash_array << new_poet
  # end
  # This creates an array of poet hashes, where each poet corresponds to a number


  # poems.each do |poem|
  #   poem["poet"].gsub { |}

  # new_poems_array = poems.sort_by { |poem_hash| poem_hash["poet"] }
  # This sorts the JSON by the alpahetical order of poets

  # Create an array of all the poets in alphabetical order
  # Use the index (+1) of those poets to give the poet_id of each poet
  # Use a .match method to say where two poet names are the same
  # When there is a match then gsub the idea
  #     title: poem_hash["title"]

  #     )
  #     title_array << poem_hash["title"]
  #     body_array << poem_hash["text"]
  # end
  # return title_array
# end

# puts scrape_poetry_foundation
