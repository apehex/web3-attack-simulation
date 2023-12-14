# UNIQUE SYLLABLES ############################################################

def syllable(index: int=0, size: int=2, offset: int=0xaaaa) -> str:
    __format = '{0:0>' + str(2 * size) + 'x}'
    return __format.format(offset + index)

# GENERATOR ###################################################################

def syllables(count: int=16, size: int=2, offset: int=0xaaaa) -> str:
    __index = 0
    while __index < count:
        yield syllable(index=__index, size=size, offset=offset)
        __index = __index + 1

# WORDS #######################################################################

def word(source: iter, left: int=0, right: int=0, prefix: bool=False) -> str:
    __count = 16 - left - right
    return (
        ('0x' if prefix else '')
        + left * '0000'
        + ''.join([next(source) for __i in range(__count)])
        + right * '0000')

# FUZZING WORDLISTS ###########################################################

SYLLABLES = syllables(count=2**16, size=2, offset=0xaaaa)

# IO ##########################################################################

# address-like inputs
with open('scripts/wordlists/inputs.address.txt', 'w') as __file:
    __inputs =  [word(source=SYLLABLES, left=6, right=0, prefix=True) + '\n' for _ in range(512)]
    __file.writelines(__inputs)

# non-address
with open('scripts/wordlists/inputs.bytes.large.txt', 'w') as __file:
    __inputs =  [word(source=SYLLABLES, left=0, right=0, prefix=True) + '\n' for _ in range(512)]
    __file.writelines(__inputs)
