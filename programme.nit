#This code has been edited in the goal to get start with nit langage.

#Class personne
class Personne
	protected var nom: String
	protected var prenom: String
	
	init (x, y : String)
	do
		nom = x
		prenom = y
	end

	fun to_string: String 
	do
		return "Je suis une personne, mon nom est {nom} et mon prenom est {prenom}."
	end
end

#Class Etudiant with is a specialisation of class Personne
#this class describes stuents by name, surneame, register number and a list of mark . 
#It also give the average using list of mark.

class Etudiant
	super Personne
		
	var matricule: String 
	var note = new Array[Float] 
	
	init (x, y, z : String, a : Array[Float])
	do
		
		matricule = z
		nom = x
		prenom = y
		note = a
	end
	
	fun calcul_moyenne : Float
	do
		var total: Float = 0.0
		for i in [0 .. note.length] 
		do
			note.add(0.0)			
			total += note[i]	
		end
		
		var temp: Int = note.length / 2
		return  total / temp.to_f
	end  

	redef fun to_string: String
	do
		return	 """--> Je suis un etudiant, mon nom est {{{ nom }}}, mon prenom est {{{ prenom }}}  et mon matricule est {{{ matricule }}}.
			    \n--> J'ai obtennu {{{ note.length }}} note(s) qui sont : {{{ note.join (" ; ")}}}
			    \n--> Avec une moyenne de {{{ calcul_moyenne }}}
		      	 """	
	end
end

#Let's see how it works!

print "---------- Test Class Personne ----------\n"
var per1 = new Personne("KABORE", "ALI")
var per2 = new Personne("ROUSSEAU", "JHON")
print per1.to_string
print per2.to_string

print "\n---------- Test Class Etudiant ----------\n"
var etd1 = new Etudiant("WIN", "LECOQ", "CC1201", [12.0, 14.0, 16.0, 18.0, 20.0])
print etd1.to_string

print "\n"

var etd2 = new Etudiant("DA", "OHI", "zZ82", [14.0, 15.0, 17.0, 19.0, 17.0])
etd2.note.add(6.0)
etd2.note.add(9.0)
print etd2.to_string

print "\n"

var etd3 = new Etudiant("KI", "ALINO", "z452", [10.0, 20.0, 30.0])
print etd3.to_string


#	@~THANKS~@
