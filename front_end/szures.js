k = {
	kiir(r) {
		let t=JSON.parse(r), s=`<table>`
		t.forEach(q => {
			s+=`<tr><td>${q.nevuk}</td></tr>`
		})
		$('#cica').html(s+`</table>`)
	},
	szur() {
		$.post('szures_send',{szur:$('input').val()},k.kiir)
	},
	felvesz() {
		$.post('szures_send',{felvesz:$('input').val(), szur:$('input').val()},k.kiir)
	},
	g () {
		$('#szur').keyup(k.szur), $('#felvesz').click(k.felvesz)
		k.szur()
	}
}
$(k.g)
