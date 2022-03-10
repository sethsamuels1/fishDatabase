drop database fish;

create database fish;
use fish;

create table fishFamilies(
familyID int not null unique primary key,
familyName varchar(50) not null,
familyDescription varchar(1500) not null);

create table food(
preyID int not null primary key,
preyFamily varchar(50) not null,
preyName varchar(30) not null,
preyDescription varchar(1500) not null);

create table fishSpecies(
fishID int not null unique primary key,
scientificName varchar(20) not null,
commonName varchar(20) not null,
familyID int not null,
foreign key(familyID) references fishFamilies(familyID),
preyID int not null,
foreign key(preyID) references food(preyID));


use fish;

insert into fishFamilies(familyID,familyName,familyDescription)
values(1,"Hagfish","Hagfish, of the class Myxini /mɪkˈsaɪnaɪ/ (also known as Hyperotreti) and order Myxiniformes /mɪkˈsɪnɪfɔːrmiːz/, are eel-shaped, slime-producing marine fish (occasionally called slime eels). They are the only known living animals that have a skull but no vertebral column, although hagfish do have rudimentary vertebrae."),
(2,"Lampreys","Lampreys /ˈlæmpreɪz/ (sometimes inaccurately called lamprey eels) are an ancient extant lineage of jawless fish of the order Petromyzontiformes /ˌpɛtroʊmɪˈzɒntɪfɔːrmiːz/, placed in the superclass Cyclostomata. The adult lamprey may be characterized by a toothed, funnel-like sucking mouth. The common name lamprey is probably derived from Latin lampetra, which may mean stone licker (lambere to lick + petra stone), though the etymology is uncertain.[3] Lamprey is sometimes seen for the plural form.[4]"),
(3,"Cartilaginous Fish","Chondrichthyes (/kɒnˈdrɪkθi.iːz/; from Ancient Greek χόνδρος (khóndros) 'cartilage', and ἰχθύς (ikhthús) 'fish') is a class that contains the cartilaginous fishes that have skeletons primarily composed of cartilage. They can be contrasted with the Osteichthyes or bony fishes, which have skeletons primarily composed of bone tissue. Chondrichthyes are jawed vertebrates with paired fins, paired nares, scales, and a heart with its chambers in series."),
(4,"Ray-Finned Fish","The ray-finned fishes are so-called because their fins are webs of skin supported by bony or horny spines (rays), as opposed to the fleshy, lobed fins that characterize the class Sarcopterygii (lobe-finned fish). These actinopterygian fin rays attach directly to the proximal or basal skeletal elements, the radials, which represent the link or connection between these fins and the internal skeleton (e.g., pelvic and pectoral girdles)."),
(5,"Lobe-Finned Fish","Sarcopterygii (/ˌsɑːrkɒptəˈrɪdʒi.aɪ/; from Ancient Greek σάρξ (sárx) 'flesh', and πτέρυξ (ptérux) 'wing, fins') — sometimes considered synonymous with Crossopterygii (from Ancient Greek κροσσός (krossós) 'fringe') — is a taxon (traditionally a class or subclass) of the bony fishes whose members are known as lobe-finned fishes. The group Tetrapoda, a superclass including amphibians, reptiles (including dinosaurs and therefore birds), and mammals, evolved from certain sarcopterygians; under a cladistic view, tetrapods are themselves considered a group within Sarcopterygii.");

insert into food(preyID,preyFamily,preyName,preyDescription)
values(1,"Malacostraca","Crayfish","Crayfish are freshwater crustaceans resembling small lobsters (to which they are related). In some locations, they are also known as crawfish, craydids, crawdaddies, crawdads, freshwater lobsters, mountain lobsters, rock lobsters, mudbugs, or yabbies."),
(2,"Sepioteuthis sepioidea","Caribbean Reef Squid","The Caribbean reef squid is found throughout the Caribbean Sea as well as off the coast of Florida, commonly in small schools of four to thirty in the shallows associated with reefs. The habitat of the Reef Squid changes according to the squid's stage of life and size."),
(3,"Litopenaeus setiferus ","Atlantic White Shrimp","The Atlantic white shrimp was the first commercially important shrimp in the United States. The prawn species' body is bluish-white in color with slightly pink sides and has tail flippers that are black near the base with green and yellow margins."),
(4,"Mytilus edulis","Blue Mussel","The blue mussel (Mytilus edulis), also known as the common mussel,[1] is a medium-sized edible marine bivalve mollusc in the family Mytilidae, the mussels. Blue mussels are subject to commercial use and intensive aquaculture. A species with a large range, empty shells are commonly found on beaches around the world.");

insert into fishSpecies(fishID,scientificName,commonName,familyID,preyID)
values
(1,"Lutjanidae","Snapper",4,1),
(2,"Myliobatoidei","Stingray",3,1),
(3,"Manta","Manta Ray",3,1),
(4,"Haemulon sciurus","Bluestriped grunt",4,1),
(5,"Ocyurus chrysurus","Yellowtail snapper",4,1),
(6,"Cephalopholis Fulva", "Coney Grouper",4,1),
(7,"Balistes capriscus", "Gray Triggerfish",4,1);

select * from fishFamilies;

select * from food;

select * from fishSpecies;