//
//  PokemonTableViewController.m
//  PokemonTableView
//
//  Created by Artur Lan on 7/26/15.
//  Copyright (c) 2015 Artur Lan. All rights reserved.
//

#import "PokemonTableViewController.h"

@interface PokemonTableViewController ()

@property (nonatomic) NSArray *poke;

@end

@implementation PokemonTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.poke = @[
                  @"Bulbasaur",
                  @"Ivysaur",
                  @"Venusaur",
                  @"Charmander",
                  @"Charmeleon",
                  @"Charizard",
                  @"Squirtle",
                  @"Wartortle",
                  @"Blastoise",
                  @"Caterpie",
                  @"Metapod",
                  @"Butterfree",
                  @"Weedle",
                  @"Kakuna",
                  @"Beedrill",
                  @"Pidgey",
                  @"Pidgeotto",
                  @"Pidgeot",
                  @"Rattata",
                  @"Raticate",
                  @"Spearow",
                  @"Fearow",
                  @"Ekans",
                  @"Arbok",
                  @"Pikachu",
                  @"Raichu",
                  @"Sandshrew",
                  @"Sandslash",
                  @"Nidoran♀",
                  @"Nidorina",
                  @"Nidoqueen",
                  @"Nidoran♂",
                  @"Nidorino",
                  @"Nidoking",
                  @"Clefairy",
                  @"Clefable",
                  @"Vulpix",
                  @"Ninetales",
                  @"Jigglypuff",
                  @"Wigglytuff",
                  @"Zubat",
                  @"Golbat",
                  @"Oddish",
                  @"Gloom",
                  @"Vileplume",
                  @"Paras",
                  @"Parasect",
                  @"Venonat",
                  @"Venomoth",
                  @"Diglett",
                  @"Dugtrio",
                  @"Meowth",
                  @"Persian",
                  @"Psyduck",
                  @"Golduck",
                  @"Mankey",
                  @"Primeape",
                  @"Growlithe",
                  @"Arcanine",
                  @"Poliwag",
                  @"Poliwhirl",
                  @"Poliwrath",
                  @"Abra",
                  @"Kadabra",
                  @"Alakazam",
                  @"Machop",
                  @"Machoke",
                  @"Machamp",
                  @"Bellsprout",
                  @"Weepinbell",
                  @"Victreebel",
                  @"Tentacool",
                  @"Tentacruel",
                  @"Geodude",
                  @"Graveler",
                  @"Golem",
                  @"Ponyta",
                  @"Rapidash",
                  @"Slowpoke",
                  @"Slowbro",
                  @"Magnemite",
                  @"Magneton",
                  @"Farfetch'd",
                  @"Doduo",
                  @"Dodrio",
                  @"Seel",
                  @"Dewgong",
                  @"Grimer",
                  @"Muk",
                  @"Shellder",
                  @"Cloyster",
                  @"Gastly",
                  @"Haunter",
                  @"Gengar",
                  @"Onix",
                  @"Drowzee",
                  @"Hypno",
                  @"Krabby",
                  @"Kingler",
                  @"Voltorb",
                  @"Electrode",
                  @"Exeggcute",
                  @"Exeggutor",
                  @"Cubone",
                  @"Marowak",
                  @"Hitmonlee",
                  @"Hitmonchan",
                  @"Lickitung",
                  @"Koffing",
                  @"Weezing",
                  @"Rhyhorn",
                  @"Rhydon",
                  @"Chansey",
                  @"Tangela",
                  @"Kangaskhan",
                  @"Horsea",
                  @"Seadra",
                  @"Goldeen",
                  @"Seaking",
                  @"Staryu",
                  @"Starmie",
                  @"Mr. Mime",
                  @"Scyther",
                  @"Jynx",
                  @"Electabuzz",
                  @"Magmar",
                  @"Pinsir",
                  @"Tauros",
                  @"Magikarp",
                  @"Gyarados",
                  @"Lapras",
                  @"Ditto",
                  @"Eevee",
                  @"Vaporeon",
                  @"Jolteon",
                  @"Flareon",
                  @"Porygon",
                  @"Omanyte",
                  @"Omastar",
                  @"Kabuto",
                  @"Kabutops",
                  @"Aerodactyl",
                  @"Snorlax",
                  @"Articuno",
                  @"Zapdos",
                  @"Moltres",
                  @"Dratini",
                  @"Dragonair",
                  @"Dragonite",
                  @"Mewtwo",
                  @"Mew"
                  ];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.poke.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PokemonNames" forIndexPath:indexPath];
    
    NSString *name = self.poke[indexPath.row];
    cell.textLabel.text = name;
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {

    return 0;
}

@end
