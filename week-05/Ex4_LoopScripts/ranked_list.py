fav_pokemon = ['Manectric', 'Flygon', 'Crobat', 'Galvantula', 'Whimsicott']

for fave, fav_pokemon in enumerate (fav_pokemon,start=1):
    if fave == 1:
        print(f'{fave}. {fav_pokemon} <- top pick!')
    else:
        print(f'{fave}. {fav_pokemon}')