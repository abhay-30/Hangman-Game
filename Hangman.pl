
  #!/usr/local/bin/perl
    $num_of_tries = 0;
    $play         = 1;

    while (1) {
        if ( $play == 1 ) {

            sub hangman1Display {
                print "  -------\n";
                print "  |     |\n";
                print "  |\n";
                print "  |\n";
                print "  |\n";
                print "  |\n";
                print "  |\n";
                print "--|----\n";
            }

            sub hangman2Display {
                print "  -------\n";
                print "  |     |\n";
                print "  |     o\n";
                print "  |\n";
                print "  |\n";
                print "  |\n";
                print "  |\n";
                print "--|----\n";
            }

            sub hangman3Display {
                print "  -------\n";
                print "  |     |\n";
                print "  |     o\n";
                print "  |     |\n";
                print "  |\n";
                print "  |\n";
                print "  |\n";
                print "--|----\n";
            }

            sub hangman4Display {
                print "  -------\n";
                print "  |     |\n";
                print "  |     o\n";
                print "  |    \\|\n";
                print "  |\n";
                print "  |\n";
                print "  |\n";
                print "--|----\n";
            }

            sub hangman5Display {
                print "  -------\n";
                print "  |     |\n";
                print "  |     o\n";
                print "  |    \\|/\n";
                print "  |\n";
                print "  |\n";
                print "  |\n";
                print "--|----\n";
            }

            sub hangman6Display {
                print "  -------\n";
                print "  |     |\n";
                print "  |     o\n";
                print "  |    \\|/\n";
                print "  |     /\n";
                print "  |\n";
                print "  |\n";
                print "--|----\n";
            }

            sub hangman7Display {
                print "  -------\n";
                print "  |     |\n";
                print "  |     x\n";
                print "  |    \\|/\n";
                print "  |     /\\\n";
                print "  |\n";
                print "  |\n";
                print "--|----\n";

            }

            @words = (
                "computer",      "radio",
                "calculator",    "teacher",
                "bureau",        "police",
                "geometry",      "president",
                "subject",       "country",
                "enviroment",    "classroom",
                "animals",       "province",
                "month",         "politics",
                "puzzle",        "instrument",
                "kitchen",       "language",
                "vampire",       "ghost",
                "solution",      "service",
                "software",      "virus25",
                "security",      "phonenumber",
                "expert",        "website",
                "agreement",     "support",
                "compatibility", "advanced",
                "search",        "triathlon",
                "immediately",   "encyclopedia",
                "endurance",     "distance",
                "nature",        "history",
                "organization",  "international",
                "championship",  "government",
                "popularity",    "thousand",
                "feature",       "wetsuit",
                "fitness",       "legendary",
                "variation",     "equal",
                "approximately", "segment",
                "priority",      "physics",
                "branche",       "science",
                "mathematics",   "lightning",
                "dispersion",    "accelerator",
                "detector",      "terminology",
                "design",        "operation",
                "foundation",    "application",
                "prediction",    "reference",
                "measurement",   "concept",
                "perspective",   "overview",
                "position",      "airplane",
                "symmetry",      "dimension",
                "toxic",         "algebra",
                "illustration",  "classic",
                "verification",  "citation",
                "unusual",       "resource",
                "analysis",      "license",
                "comedy",        "screenplay",
                "production",    "release",
                "emphasis",      "director",
                "trademark",     "vehicle",
                "aircraft",      "experiment"
            );

            $random       = rand(100);
            $len          = length( $words[$random] );
            $word         = @words[$random];
            @guess_so_far = ();
            print("$words[$random]\n");

            # print("$len");
            @oneword = split( undef, $word );

            # print("@oneword\n");

            for ( $k = 0 ; $k < $len ; $k++ ) {
                push @guess_word, '_';
            }

            print("Here is your word :");

            print("@guess_word");
            print("\n");
            $ct2 = 0;

            for ( $i = 0 ; $i < $len ; $i++ ) {
                print("Guesses so far :");
                print("@guess_so_far");
                print("\n");
                print("Make a guess :");
                $guess = <STDIN>;
                chomp($guess);
                push @guess_so_far, "$guess";

                $ct       = 0;
                $kitnibar = 0;
                for ( $k = 0 ; $k < $len ; $k++ ) {

                    if ( $oneword[$k] eq $guess ) {
                        $oneword[$k] = 1;

                        # print("@oneword")
                        $ct++;
                        $kitnibar++;

                        $guess_word[$k] = $guess;

                    }

                }

                if ( $kitnibar == 2 ) {
                    $i++;
                }
                if ( $kitnibar == 3 ) {
                    $i++;
                    $i++;
                }
                if ( $kitnibar == 4 ) {
                    $i++;
                    $i++;
                    $i++;
                }
                if ( $kitnibar == 5 ) {
                    $i++;
                    $i++;
                    $i++;
                    $i++;
                }

                if ( $ct == 0 ) {
                    print("Wrong guess\n");
                    $ct2++;

                    if ( $num_of_tries == 0 ) {
                        hangman1Display();
                    }
                    elsif ( $num_of_tries == 1 ) {
                        hangman2Display();
                    }
                    elsif ( $num_of_tries == 2 ) {
                        hangman3Display();
                    }
                    elsif ( $num_of_tries == 3 ) {
                        hangman4Display();
                    }
                    elsif ( $num_of_tries == 4 ) {
                        hangman5Display();
                    }
                    elsif ( $num_of_tries == 5 ) {
                        hangman6Display();
                    }
                    elsif ( $num_of_tries == 6 ) {
                        hangman7Display();
                    }
                    else {
                        hangman7Display();

                    }

                    $num_of_tries++;
                }
                else {
                    print("@guess_word\n");
                }

            }

            $jeet = 0;
            for ( $q = 0 ; $q < $len ; $q++ ) {
                if ( $guess_word[$q] eq '_' ) {
                    $jeet++;
                }
            }

            if ( $jeet == 0 ) {
                print("You wins !!!\n");
            }
            else {
                print("You Lost!!!\n");
            }

            print("Enter 1 to play again and 0 to quit.");

            for ( $r = 0 ; $r < $len ; $r++ ) {
                pop @guess_word;
            }

            $play = <STDIN>;
            print($play);
            chomp($play);

        }

        else {
            print("Game Endend.");
            last;
        }

    }
