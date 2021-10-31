class Round(val skills: List<Skill>){

}

class Battle(val fighterLeft: Character,val fighterRight: Character) {
public rounds: List<Map<Character, Skill>> = listOf()
fun getLestRound(): Map<Character, Skill> = this.rounds.last()
}

