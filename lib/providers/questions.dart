import '../models/option_model.dart';
import '../models/question_model.dart';

Map<String, List<QuestionModel>> questions = {
  "Geography": [
    QuestionModel(
      question: "What is the capital of India?",
      options: [
        OptionModel(optionName: "New Delhi", isSelected: false),
        OptionModel(optionName: "Mumbai", isSelected: false),
        OptionModel(optionName: "Kolkata", isSelected: false),
        OptionModel(optionName: "Chennai", isSelected: false),
      ],
      correctAnswer: "Delhi",
      explanation:
          "Delhi is the capital of India. It is the second most populous city in India after Mumbai.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "What is the capital of Pakistan?",
      options: [
        OptionModel(optionName: "Islamabad", isSelected: false),
        OptionModel(optionName: "Karachi", isSelected: false),
        OptionModel(optionName: "Lahore", isSelected: false),
        OptionModel(optionName: "Peshawar", isSelected: false),
      ],
      correctAnswer: "Islamabad",
      explanation:
          "Islamabad is the capital of Pakistan. It is the 11th most populous city in Pakistan.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "What is the capital of China?",
      options: [
        OptionModel(optionName: "Beijing", isSelected: false),
        OptionModel(optionName: "Shanghai", isSelected: false),
        OptionModel(optionName: "Tianjin", isSelected: false),
        OptionModel(optionName: "Chongqing", isSelected: false),
      ],
      correctAnswer: "Beijing",
      explanation:
          "Beijing is the capital of China. It is the second most populous city in China after Shanghai.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "What is the capital of Japan?",
      options: [
        OptionModel(optionName: "Tokyo", isSelected: false),
        OptionModel(optionName: "Osaka", isSelected: false),
        OptionModel(optionName: "Yokohama", isSelected: false),
        OptionModel(optionName: "Nagoya", isSelected: false),
      ],
      correctAnswer: "Tokyo",
      explanation:
          "Tokyo is the capital of Japan. It is the most populous metropolitan area in the world.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "What is the capital of Russia?",
      options: [
        OptionModel(optionName: "Moscow", isSelected: false),
        OptionModel(optionName: "Saint Petersburg", isSelected: false),
        OptionModel(optionName: "Novosibirsk", isSelected: false),
        OptionModel(optionName: "Yekaterinburg", isSelected: false),
      ],
      correctAnswer: "Moscow",
      explanation:
          "Moscow is the capital of Russia. It is the most populous city in Russia.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "What is the capital of Germany?",
      options: [
        OptionModel(optionName: "Berlin", isSelected: false),
        OptionModel(optionName: "Hamburg", isSelected: false),
        OptionModel(optionName: "Munich", isSelected: false),
        OptionModel(optionName: "Cologne", isSelected: false),
      ],
      correctAnswer: "Berlin",
      explanation:
          "Berlin is the capital of Germany. It is the second most populous city in Germany after Hamburg.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "What is the capital of France?",
      options: [
        OptionModel(optionName: "Paris", isSelected: false),
        OptionModel(optionName: "Marseille", isSelected: false),
        OptionModel(optionName: "Lyon", isSelected: false),
        OptionModel(optionName: "Toulouse", isSelected: false),
      ],
      correctAnswer: "Paris",
      explanation:
          "Paris is the capital of France. It is the most populous city in France.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "What is the capital of Italy?",
      options: [
        OptionModel(optionName: "Rome", isSelected: false),
        OptionModel(optionName: "Milan", isSelected: false),
        OptionModel(optionName: "Naples", isSelected: false),
        OptionModel(optionName: "Turin", isSelected: false),
      ],
      correctAnswer: "Rome",
      explanation:
          "Rome is the capital of Italy. It is the most populous city in Italy.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "What is the capital of Spain?",
      options: [
        OptionModel(optionName: "Madrid", isSelected: false),
        OptionModel(optionName: "Barcelona", isSelected: false),
        OptionModel(optionName: "Valencia", isSelected: false),
        OptionModel(optionName: "Seville", isSelected: false),
      ],
      correctAnswer: "Madrid",
      explanation:
          "Madrid is the capital of Spain. It is the third most populous city in Spain after Barcelona and Seville.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "What is the capital of Brazil?",
      options: [
        OptionModel(optionName: "São Paulo", isSelected: false),
        OptionModel(optionName: "Rio de Janeiro", isSelected: false),
        OptionModel(optionName: "Salvador", isSelected: false),
        OptionModel(optionName: "Brasília", isSelected: false),
      ],
      correctAnswer: "Brasília",
      explanation:
          "Brasília is the capital of Brazil. It is the third most populous city in Brazil after São Paulo and Rio de Janeiro.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "What is the capital of Canada?",
      options: [
        OptionModel(optionName: "Toronto", isSelected: false),
        OptionModel(optionName: "Montreal", isSelected: false),
        OptionModel(optionName: "Vancouver", isSelected: false),
        OptionModel(optionName: "Ottawa", isSelected: false),
      ],
      correctAnswer: "Ottawa",
      explanation:
          "Ottawa is the capital of Canada. It is the fourth most populous city in Canada after Toronto, Montreal and Vancouver.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "What is the capital of Australia?",
      options: [
        OptionModel(optionName: "Sydney", isSelected: false),
        OptionModel(optionName: "Melbourne", isSelected: false),
        OptionModel(optionName: "Brisbane", isSelected: false),
        OptionModel(optionName: "Canberra", isSelected: false),
      ],
      correctAnswer: "Canberra",
      explanation:
          "Canberra is the capital of Australia. It is the eighth most populous city in Australia.",
      optionSelected: "",
    ),
  ],
  "Science": [
    // science questions
    QuestionModel(
      question: "What is the chemical formula of water?",
      options: [
        OptionModel(optionName: "H2O", isSelected: false),
        OptionModel(optionName: "H2O2", isSelected: false),
        OptionModel(optionName: "H2O3", isSelected: false),
        OptionModel(optionName: "H2O4", isSelected: false),
      ],
      correctAnswer: "H2O",
      explanation:
          "Water is a chemical compound with the chemical formula H2O. It is a polar inorganic compound that is at room temperature a tasteless and odorless liquid, nearly colorless with a hint of blue.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "What is the chemical formula of carbon dioxide?",
      options: [
        OptionModel(optionName: "CO2", isSelected: false),
        OptionModel(optionName: "CO3", isSelected: false),
        OptionModel(optionName: "CO4", isSelected: false),
        OptionModel(optionName: "CO5", isSelected: false),
      ],
      correctAnswer: "CO2",
      explanation:
          "Carbon dioxide is a chemical compound with the formula CO2. It is a colorless gas with a density about 60% higher than that of dry air.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "What is the chemical formula of ammonia?",
      options: [
        OptionModel(optionName: "NH3", isSelected: false),
        OptionModel(optionName: "NH4", isSelected: false),
        OptionModel(optionName: "NH5", isSelected: false),
        OptionModel(optionName: "NH6", isSelected: false),
      ],
      correctAnswer: "NH3",
      explanation:
          "Ammonia is a compound of nitrogen and hydrogen with the formula NH3. A stable binary hydride, and the simplest pnictogen hydride, ammonia is a colourless gas with a characteristic pungent smell.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "What is the chemical formula of methane?",
      options: [
        OptionModel(optionName: "CH4", isSelected: false),
        OptionModel(optionName: "CH5", isSelected: false),
        OptionModel(optionName: "CH6", isSelected: false),
        OptionModel(optionName: "CH7", isSelected: false),
      ],
      correctAnswer: "CH4",
      explanation:
          "Methane is a chemical compound with the chemical formula CH4. It is a group 14 hydride and the simplest alkane, and is the main constituent of natural gas.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "What is the chemical formula of hydrogen?",
      options: [
        OptionModel(optionName: "H2", isSelected: false),
        OptionModel(optionName: "H3", isSelected: false),
        OptionModel(optionName: "H4", isSelected: false),
        OptionModel(optionName: "H5", isSelected: false),
      ],
      correctAnswer: "H2",
      explanation:
          "Hydrogen is a chemical element with the symbol H and atomic number 1. With a standard atomic weight of 1.008, hydrogen is the lightest element on the periodic table.",
      optionSelected: "",
    ),
  ],
  "History": [
    // history questions
    QuestionModel(
      question: "Who was the first president of the United States?",
      options: [
        OptionModel(optionName: "George Washington", isSelected: false),
        OptionModel(optionName: "John Adams", isSelected: false),
        OptionModel(optionName: "Thomas Jefferson", isSelected: false),
        OptionModel(optionName: "James Madison", isSelected: false),
      ],
      correctAnswer: "George Washington",
      explanation:
          "George Washington was an American political leader, military general, statesman, and Founding Father who served as the first president of the United States from 1789 to 1797.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who was the first president of India?",
      options: [
        OptionModel(optionName: "Rajendra Prasad", isSelected: false),
        OptionModel(optionName: "Sarvepalli Radhakrishnan", isSelected: false),
        OptionModel(optionName: "Dr. Zakir Hussain", isSelected: false),
        OptionModel(optionName: "Pranab Mukherjee", isSelected: false),
      ],
      correctAnswer: "Rajendra Prasad",
      explanation:
          "Rajendra Prasad was an Indian independence activist and the first President of India, serving from 1950 to 1962. He was a member of the Indian National Congress and the Indian independence movement.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who was the first president of Pakistan?",
      options: [
        OptionModel(optionName: "Iskander Mirza", isSelected: false),
        OptionModel(optionName: "Ayub Khan", isSelected: false),
        OptionModel(optionName: "Zulfikar Ali Bhutto", isSelected: false),
        OptionModel(optionName: "Mohammad Ali Jinnah", isSelected: false),
      ],
      correctAnswer: "Iskander Mirza",
      explanation:
          "Iskander Mirza was a Pakistani politician who served as the first President of Pakistan from 1948 to 1951. He was the first President of Pakistan to be elected by the Constituent Assembly.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who was the first president of China?",
      options: [
        OptionModel(optionName: "Mao Zedong", isSelected: false),
        OptionModel(optionName: "Chiang Kai-shek", isSelected: false),
        OptionModel(optionName: "Sun Yat-sen", isSelected: false),
        OptionModel(optionName: "Deng Xiaoping", isSelected: false),
      ],
      correctAnswer: "Sun Yat-sen",
      explanation:
          "Sun Yat-sen was a Chinese physician, writer, philosopher, calligrapher, revolutionary, and the first president and founding father of the Republic of China.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who was the first president of Russia?",
      options: [
        OptionModel(optionName: "Vladimir Lenin", isSelected: false),
        OptionModel(optionName: "Joseph Stalin", isSelected: false),
        OptionModel(optionName: "Nikita Khrushchev", isSelected: false),
        OptionModel(optionName: "Boris Yeltsin", isSelected: false),
      ],
      correctAnswer: "Vladimir Lenin",
      explanation:
          "Vladimir Ilyich Ulyanov, better known by his alias Lenin was a Russian President revolutionary, politician, and political theorist. He served as head of government of the Russian SFSR from 1917 to 1922 and of the Soviet Union from 1922 to 1924.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who was the first president of France?",
      options: [
        OptionModel(optionName: "Napoleon Bonaparte", isSelected: false),
        OptionModel(optionName: "Charles de Gaulle", isSelected: false),
        OptionModel(optionName: "Jacques Chirac", isSelected: false),
        OptionModel(optionName: "François Hollande", isSelected: false),
      ],
      correctAnswer: "Napoleon Bonaparte",
      explanation:
          "Napoleon Bonaparte was a French statesman and military leader who rose to prominence during the French Revolution and led several successful campaigns during the French Revolutionary Wars.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who was the first president of Germany?",
      options: [
        OptionModel(optionName: "Franz von Papen", isSelected: false),
        OptionModel(optionName: "Paul von Hindenburg", isSelected: false),
        OptionModel(optionName: "Theodor Heuss", isSelected: false),
        OptionModel(optionName: "Willy Brandt", isSelected: false),
      ],
      correctAnswer: "Theodor Heuss",
      explanation:
          "Theodor Heuss was a German politician and the first President of Germany from 1949 to 1959. He was the first President of the Federal Republic of Germany.",
      optionSelected: "",
    ),
  ],
  "Politics": [
    // politics questions
    QuestionModel(
      question: "Who is the current president of the United States?",
      options: [
        OptionModel(optionName: "Donald Trump", isSelected: false),
        OptionModel(optionName: "Joe Biden", isSelected: false),
        OptionModel(optionName: "Barack Obama", isSelected: false),
        OptionModel(optionName: "George W. Bush", isSelected: false),
      ],
      correctAnswer: "Joe Biden",
      explanation:
          "Joseph Robinette Biden Jr. is an American politician who is the 46th and current president of the United States. A member of the Democratic Party, he served as the 47th vice president from 2009 to 2017.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the current president of India?",
      options: [
        OptionModel(optionName: "Ram Nath Kovind", isSelected: false),
        OptionModel(optionName: "Pranab Mukherjee", isSelected: false),
        OptionModel(optionName: "Rajendra Prasad", isSelected: false),
        OptionModel(optionName: "Sarvepalli Radhakrishnan", isSelected: false),
      ],
      correctAnswer: "Ram Nath Kovind",
      explanation:
          "Ram Nath Kovind is an Indian politician who is the 14th and current President of India, in office since 25 July 2017. A member of the Bharatiya Janata Party, he previously served as the 13th Governor of Bihar from 2015 to 2017.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the current president of Pakistan?",
      options: [
        OptionModel(optionName: "Arif Alvi", isSelected: false),
        OptionModel(optionName: "Asif Ali Zardari", isSelected: false),
        OptionModel(optionName: "Imran Khan", isSelected: false),
        OptionModel(optionName: "Pervez Musharraf", isSelected: false),
      ],
      correctAnswer: "Arif Alvi",
      explanation:
          "Arif Alvi is a Pakistani politician who is the 13th and current President of Pakistan, in office since 9 September 2018. He is a member of the Pakistan Tehreek-e-Insaf.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the current president of China?",
      options: [
        OptionModel(optionName: "Xi Jinping", isSelected: false),
        OptionModel(optionName: "Deng Xiaoping", isSelected: false),
        OptionModel(optionName: "Mao Zedong", isSelected: false),
        OptionModel(optionName: "Sun Yat-sen", isSelected: false),
      ],
      correctAnswer: "Xi Jinping",
      explanation: "",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the current president of Russia?",
      options: [
        OptionModel(optionName: "Vladimir Putin", isSelected: false),
        OptionModel(optionName: "Dmitry Medvedev", isSelected: false),
        OptionModel(optionName: "Nikita Khrushchev", isSelected: false),
        OptionModel(optionName: "Vladimir Lenin", isSelected: false),
      ],
      correctAnswer: "Vladimir Putin",
      explanation:
          "Vladimir Vladimirovich Putin is a Russian politician serving as President of Russia since 2012, previously holding the position from 1999 until 2008. He was also the Prime Minister of Russia from 1999 to 2000 and again from 2008 to 2012.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the current president of France?",
      options: [
        OptionModel(optionName: "Emmanuel Macron", isSelected: false),
        OptionModel(optionName: "François Hollande", isSelected: false),
        OptionModel(optionName: "Jacques Chirac", isSelected: false),
        OptionModel(optionName: "Napoleon Bonaparte", isSelected: false),
      ],
      correctAnswer: "Emmanuel Macron",
      explanation:
          "Emmanuel Jean-Michel Frédéric Macron is a French politician serving as President of France since 14 May 2017. He previously was the Minister of the Economy, Industry and Digital Affairs in the government of Prime Minister Édouard Philippe from 2014 to 2016.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the current president of Germany?",
      options: [
        OptionModel(optionName: "Frank-Walter Steinmeier", isSelected: false),
        OptionModel(optionName: "Willy Brandt", isSelected: false),
        OptionModel(optionName: "Theodor Heuss", isSelected: false),
        OptionModel(optionName: "Paul von Hindenburg", isSelected: false),
      ],
      correctAnswer: "Frank-Walter Steinmeier",
      explanation:
          "Frank-Walter Steinmeier is a German politician who has been the President of Germany since 12 March 2017. He previously served as Minister of Foreign Affairs from 2005 to 2009 and as Minister of Defence from 2009 to 2013.",
      optionSelected: "",
    ),
  ],
  "Entertainment": [
    //  films and movies questions
    QuestionModel(
      question: "Who is the director of the movie 'The Shawshank Redemption'?",
      options: [
        OptionModel(optionName: "Frank Darabont", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "Frank Darabont",
      explanation:
          "Frank Darabont is an American film director, screenwriter, and producer. He is best known for writing and directing the 1994 film The Shawshank Redemption, which won the Academy Award for Best Adapted Screenplay.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the director of the movie 'The Godfather'?",
      options: [
        OptionModel(optionName: "Francis Ford Coppola", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "Francis Ford Coppola",
      explanation:
          "Francis Ford Coppola is an American film director, producer, screenwriter, and film composer. He is considered to have been a central figure of the New Hollywood wave of filmmaking.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the director of the movie 'The Dark Knight'?",
      options: [
        OptionModel(optionName: "Christopher Nolan", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "Christopher Nolan",
      explanation:
          "Christopher Edward Nolan is an English-American film director, producer, and screenwriter. He is one of the highest-grossing directors in history, and among the most acclaimed.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the director of the movie 'The Lord of the Rings'?",
      options: [
        OptionModel(optionName: "Peter Jackson", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "Peter Jackson",
      explanation:
          "Sir Peter Robert Jackson ONZ KNZM is a New Zealand film director, screenwriter, and film producer. He is best known as the director, writer, and producer of The Lord of the Rings trilogy (2001–2003) and The Hobbit trilogy (2012–2014).",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the director of the movie 'Inception'?",
      options: [
        OptionModel(optionName: "Christopher Nolan", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "Christopher Nolan",
      explanation:
          "Christopher Edward Nolan is an English-American film director, producer, and screenwriter. He is one of the highest-grossing directors in history, and among the most acclaimed.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the director of the movie 'Interstellar'?",
      options: [
        OptionModel(optionName: "Christopher Nolan", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "Christopher Nolan",
      explanation:
          "Christopher Edward Nolan is an English-American film director, producer, and screenwriter. He is one of the highest-grossing directors in history, and among the most acclaimed.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the director of the movie 'The Prestige'?",
      options: [
        OptionModel(optionName: "Christopher Nolan", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "Christopher Nolan",
      explanation:
          "Christopher Edward Nolan is an English-American film director, producer, and screenwriter. He is one of the highest-grossing directors in history, and among the most acclaimed.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the director of the movie 'The Dark Knight Rises'?",
      options: [
        OptionModel(optionName: "Christopher Nolan", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "Christopher Nolan",
      explanation:
          "Christopher Edward Nolan is an English-American film director, producer, and screenwriter. He is one of the highest-grossing directors in history, and among the most acclaimed.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the director of the movie 'The Matrix'?",
      options: [
        OptionModel(optionName: "The Wachowskis", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "The Wachowskis",
      explanation:
          "The Wachowskis are an American filmmaking brother duo consisting of Lana Wachowski and Lilly Wachowski. They are best known for writing and directing the science fiction action film The Matrix trilogy.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the director of the movie 'The Matrix Reloaded'?",
      options: [
        OptionModel(optionName: "The Wachowskis", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "The Wachowskis",
      explanation:
          "The Wachowskis are an American filmmaking brother duo consisting of Lana Wachowski and Lilly Wachowski. They are best known for writing and directing the science fiction action film The Matrix trilogy.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the director of the movie 'The Matrix Revolutions'?",
      options: [
        OptionModel(optionName: "The Wachowskis", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "The Wachowskis",
      explanation:
          "The Wachowskis are an American filmmaking brother duo consisting of Lana Wachowski and Lilly Wachowski. They are best known for writing and directing the science fiction action film The Matrix trilogy.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the director of the movie 'The Matrix Resurrections'?",
      options: [
        OptionModel(optionName: "The Wachowskis", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "The Wachowskis",
      explanation:
          "The Wachowskis are an American filmmaking brother duo consisting of Lana Wachowski and Lilly Wachowski. They are best known for writing and directing the science fiction action film The Matrix trilogy.",
      optionSelected: "",
    ),
    QuestionModel(
      question:
          "Who is the director of the movie 'The Lord of the Rings: The Fellowship of the Ring'?",
      options: [
        OptionModel(optionName: "Peter Jackson", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "Peter Jackson",
      explanation:
          "Sir Peter Robert Jackson ONZ KNZM is a New Zealand film director, screenwriter, and film producer. He is best known as the director, writer, and producer of The Lord of the Rings trilogy (2001–2003) and The Hobbit trilogy (2012–2014).",
      optionSelected: "",
    ),
    QuestionModel(
      question:
          "Who is the director of the movie 'The Lord of the Rings: The Two Towers'?",
      options: [
        OptionModel(optionName: "Peter Jackson", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "Peter Jackson",
      explanation:
          "Sir Peter Robert Jackson ONZ KNZM is a New Zealand film director, screenwriter, and film producer. He is best known as the director, writer, and producer of The Lord of the Rings trilogy (2001–2003) and The Hobbit trilogy (2012–2014).",
      optionSelected: "",
    ),
    QuestionModel(
      question:
          "Who is the director of the movie 'The Lord of the Rings: The Return of the King'?",
      options: [
        OptionModel(optionName: "Peter Jackson", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "Peter Jackson",
      explanation:
          "Sir Peter Robert Jackson ONZ KNZM is a New Zealand film director, screenwriter, and film producer. He is best known as the director, writer, and producer of The Lord of the Rings trilogy (2001–2003) and The Hobbit trilogy (2012–2014).",
      optionSelected: "",
    ),
    QuestionModel(
      question:
          "Who is the director of the movie 'The Hobbit: An Unexpected Journey'?",
      options: [
        OptionModel(optionName: "Peter Jackson", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "Peter Jackson",
      explanation:
          "Sir Peter Robert Jackson ONZ KNZM is a New Zealand film director, screenwriter, and film producer. He is best known as the director, writer, and producer of The Lord of the Rings trilogy (2001–2003) and The Hobbit trilogy (2012–2014).",
      optionSelected: "",
    ),
    QuestionModel(
      question:
          "Who is the director of the movie 'The Hobbit: The Desolation of Smaug'?",
      options: [
        OptionModel(optionName: "Peter Jackson", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "Peter Jackson",
      explanation:
          "Sir Peter Robert Jackson ONZ KNZM is a New Zealand film director, screenwriter, and film producer. He is best known as the director, writer, and producer of The Lord of the Rings trilogy (2001–2003) and The Hobbit trilogy (2012–2014).",
      optionSelected: "",
    ),
    QuestionModel(
      question:
          "Who is the director of the movie 'The Hobbit: The Battle of the Five Armies'?",
      options: [
        OptionModel(optionName: "Peter Jackson", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "Peter Jackson",
      explanation:
          "Sir Peter Robert Jackson ONZ KNZM is a New Zealand film director, screenwriter, and film producer. He is best known as the director, writer, and producer of The Lord of the Rings trilogy (2001–2003) and The Hobbit trilogy (2012–2014).",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the director of the movie 'The Dark Knight'?",
      options: [
        OptionModel(optionName: "Christopher Nolan", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "Christopher Nolan",
      explanation:
          "Christopher Edward Nolan is an English-American film director, producer, screenwriter, and editor. He is one of the most successful and acclaimed filmmakers of the 2010s.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the director of the movie 'The Dark Knight Rises'?",
      options: [
        OptionModel(optionName: "Christopher Nolan", isSelected: false),
        OptionModel(optionName: "Steven Spielberg", isSelected: false),
        OptionModel(optionName: "Martin Scorsese", isSelected: false),
        OptionModel(optionName: "Quentin Tarantino", isSelected: false),
      ],
      correctAnswer: "Christopher Nolan",
      explanation:
          "Christopher Edward Nolan is an English-American film director, producer, screenwriter, and editor. He is one of the most successful and acclaimed filmmakers of the 2010s.",
      optionSelected: "",
    ),
  ],
  "Sports": [
    QuestionModel(
      question: "Who is the captain of the Indian Cricket Team?",
      options: [
        OptionModel(optionName: "Virat Kohli", isSelected: false),
        OptionModel(optionName: "Rohit Sharma", isSelected: false),
        OptionModel(optionName: "MS Dhoni", isSelected: false),
        OptionModel(optionName: "Kane Williamson", isSelected: false),
      ],
      correctAnswer: "Virat Kohli",
      explanation:
          "Virat Kohli is an Indian cricketer who currently captains the India national team. A right-handed top-order batsman, Kohli is regarded as one of the best batsmen in the world.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the captain of the Indian Football Team?",
      options: [
        OptionModel(optionName: "Sunil Chhetri", isSelected: false),
        OptionModel(optionName: "Rohit Sharma", isSelected: false),
        OptionModel(optionName: "MS Dhoni", isSelected: false),
        OptionModel(optionName: "Kane Williamson", isSelected: false),
      ],
      correctAnswer: "Sunil Chhetri",
      explanation:
          "Sunil Chhetri is an Indian professional footballer who plays as a forward for Indian Super League club Bengaluru FC and the India national team.",
      optionSelected: "",
    ),
    QuestionModel(
      question: "Who is the captain of the Indian Hockey Team?",
      options: [
        OptionModel(optionName: "Sunil Chhetri", isSelected: false),
        OptionModel(optionName: "Rohit Sharma", isSelected: false),
        OptionModel(optionName: "MS Dhoni", isSelected: false),
        OptionModel(optionName: "Manpreet Singh", isSelected: false),
      ],
      correctAnswer: "Manpreet Singh",
      explanation:
          "Manpreet Singh is an Indian field hockey player who plays as a defender for the Indian national team. He is the captain of the Indian national team.",
      optionSelected: "",
    ),
  ],
};
