abstract class PokemonEvent {}

class SearchPokemonGetEvent extends PokemonEvent {
  String pokemonName;
  SearchPokemonGetEvent({required this.pokemonName});
}
class RandomPokemonGetEvent extends PokemonEvent {

}
