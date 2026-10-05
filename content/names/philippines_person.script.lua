

local firstname_male = {
	"Jose", "Juan", "Manuel", "Antonio", "Mark", "John", "Christian",
	"Angelo", "Michael", "Robert", "Francis", "Reynaldo", "Danilo",
	"Eduardo", "Rolando", "Rodrigo", "Ferdinand", "Benigno", "Gabriel",
	"Nathaniel", "Joshua", "Alden", "Carlo", "Carl", "Jerome", "Jericho", "Jomar",
	"Jomel", "Ryan", "Bryan", "Kevin", "Kenneth", "Patrick", "Paul",
	"Vincent", "Adrian", "Albert", "Alvin", "Allan", "Arnold",
	"Ronald", "Ronaldo", "Marvin", "Melvin", "Rodel", "Renato",
	"Rogelio", "Ramon", "Ricardo", "Ricky", "Emmanuel", "Emerson",
	"Erwin", "Eric", "Noel", "Joel", "Jerald", "Jason",
	"James", "Jefferson", "Jeffrey", "Justin", "Ivan", "Leo",
	"Leonardo", "Lorenzo", "Miguel", "Paolo", "Enrico",
	"Dominic", "Nathan", "Daniel", "David", "Luis", "Marco",
	"Matthew", "Neil", "Nico", "Prince", "Ralph", "Romeo",
	"Samuel", "Stephen", "Victor", "Winston", "Xavier",
}

local firstname_female = {
	"Maria", "Ana", "Mary", "Christina", "Angelica", "Princess", "Jessica",
	"Nicole", "Michelle", "Rosario", "Corazon", "Gloria", "Imelda",
	"Leonor", "Grace", "Divina", "Liza", "Rowena", "Carmela", "Beatriz",
	"Theresa", "Sarah", "Pauline", "June", "Kennah", "Rhea", "Rain",
	"Barbie", "Christine", "Angela", "Angel", "Angelie", "Joy", "Joyce", "Mae",
	"May", "April", "Rose", "Rosemarie", "Rose Ann", "Maricel",
	"Maribel", "Marissa", "Marjorie", "Janine", "Janice", "Jasmine",
	"Katherine", "Kathleen", "Kate", "Kim", "Kimberly", "Kristine",
	"Kristel", "Patricia", "Patty", "Jennifer", "Jenny", "Sheila",
	"Shiela", "Sharon", "Lourdes", "Aileen", "Elaine", "Catherine",
	"Camille", "Bianca", "Danica", "Denise", "Erika", "Frances",
	"Hannah", "Isabel", "Julia", "Karen", "Leah", "Louise",
	"Mika", "Monica", "Nina", "Regine", "Samantha", "Sophia",
	"Trisha", "Vanessa", "Yvonne",
}

local lastname = {
	"Santos", "Reyes", "Cruz", "Dela Cruz", "Garcia", "Mendoza",
	"Torres", "Lopez", "Gonzales", "Gonzalez", "Martinez", "Ramos",
	"Flores", "Rivera", "Morales", "Castillo", "Navarro", "Valdez",
	"Domingo", "Salazar", "Fernandez", "Villanueva", "Aquino",
	"Bautista", "Ocampo", "Mercado", "Rosales", "Pascual", "Soriano",
	"De Leon", "Del Rosario", "De Guzman", "De Vera", "De Mesa",
	"Tolentino", "Manalo", "Aguilar", "Alcantara", "Arellano",
	"Ballesteros", "Bonifacio", "Caballero", "Cabrera", "Calderon",
	"Camacho", "Campos", "Castro", "Chavez", "David",
	"Evangelista", "Fajardo", "Fuentes", "Galang", "Herrera",
	"Javier", "Luna", "Magsaysay", "Malonzo", "Miranda",
	"Natividad", "Ortega", "Padilla", "Pineda", "Quinto",
	"Ramirez", "Samson", "Sandoval", "Serrano", "Trinidad",
	"Valencia", "Velasco", "Vergara", "Yap", "Tan",
	"Lim", "Sy", "Go", "Ong", "Co", "Chua", "Dy",
	"Yu", "Kho", "Lee", "Chan",
	"Palla", "Quilantang",
}

function data()
	return {
		personNameScriptFn = function(captureParams, params)
			local firsts = params.isMale and firstname_male or firstname_female
			local first = firsts[math.random(#firsts)]
			local last = lastname[math.random(#lastname)]
			if last == first then
				last = lastname[math.random(#lastname)]
			end
			return first .. " " .. last
		end,
	}
end