class Overlay:
    def __init__(self, name: str = None, after = None, origin: int = None, objects: list[str] = None):
        self.name = name
        self.objects = objects
        self.after = after
        self.origin = origin

ARM9_OBJECTS = [
    'main.o'
]

ITCM_OBJECTS = [
    'itcm.o'
]

DTCM_OBJECTS = [
    'dtcm.o'
]

ov00 = Overlay(name='ov00', after='ARM9', objects=[
    'ov00.o'
])
ov01 = Overlay(name='ov01', after=ov00, objects=[
    'ov01.o'
])
ov02 = Overlay(name='ov02', after=ov00, objects=[
    'ov02.o'
])
ov03 = Overlay(name='ov03', after=ov00, objects=[
    'ov03.o'
])
ov04 = Overlay(name='ov04', after=ov03, objects=[
    'ov04.o'
])
ov05 = Overlay(name='ov05', after=ov03, objects=[
    'ov05.o'
])
ov06 = Overlay(name='ov06', after=ov03, objects=[
    'ov06.o'
])
ov07 = Overlay(name='ov07', after=ov03, objects=[
    'ov07.o'
])
ov08 = Overlay(name='ov08', after=ov05, objects=[
    'ov08.o'
])
ov09 = Overlay(name='ov09', after=ov05, objects=[
    'ov09.o'
])
ov10 = Overlay(name='ov10', after=ov05, objects=[
    'ov10.o'
])
ov11 = Overlay(name='ov11', after=ov05, objects=[
    'ov11.o'
])
ov12 = Overlay(name='ov12', after=ov05, objects=[
    'ov12.o'
])
ov13 = Overlay(name='ov13', after=ov05, objects=[
    'ov13.o'
])
ov14 = Overlay(name='ov14', after=ov09, objects=[
    'ov14.o'
])
ov15 = Overlay(name='ov15', after=ov09, objects=[
    'ov15.o'
])
ov16 = Overlay(name='ov16', after=ov09, objects=[
    'ov16.o'
])
ov17 = Overlay(name='ov17', after=ov14, objects=[
    'ov17.o'
])
ov18 = Overlay(name='ov18', after=ov14, objects=[
    'ov18.o'
])
ov19 = Overlay(name='ov19', after=ov18, objects=[
    'ov19.o'
])
ov20 = Overlay(name='ov20', after=ov18, objects=[
    'ov20.o'
])
ov21 = Overlay(name='ov21', after=ov18, objects=[
    'ov21.o'
])
ov22 = Overlay(name='ov22', after=ov18, objects=[
    'ov22.o'
])
ov23 = Overlay(name='ov23', after=ov18, objects=[
    'ov23.o'
])
ov24 = Overlay(name='ov24', after=ov18, objects=[
    'ov24.o'
])
ov25 = Overlay(name='ov25', after=ov18, objects=[
    'ov25.o'
])
ov26 = Overlay(name='ov26', after=ov18, objects=[
    'ov26.o'
])
ov27 = Overlay(name='ov27', after=ov18, objects=[
    'ov27.o'
])
ov28 = Overlay(name='ov28', after=ov18, objects=[
    'ov28.o'
])
ov29 = Overlay(name='ov29', after=ov18, objects=[
    'ov29.o'
])
ov30 = Overlay(name='ov30', after=ov29, objects=[
    'ov30.o'
])
ov31 = Overlay(name='ov31', after=ov29, objects=[
    'ov31.o'
])
ov32 = Overlay(name='ov32', after=ov29, objects=[
    'ov32.o'
])
ov33 = Overlay(name='ov33', after=ov29, objects=[
    'ov33.o'
])
ov34 = Overlay(name='ov34', after=ov29, objects=[
    'ov34.o'
])
ov35 = Overlay(name='ov35', after=ov29, objects=[
    'ov35.o'
])
ov36 = Overlay(name='ov36', after=ov29, objects=[
    'ov36.o'
])
ov37 = Overlay(name='ov37', after=ov29, objects=[
    'ov37.o'
])
ov38 = Overlay(name='ov38', after=ov29, objects=[
    'ov38.o'
])
ov39 = Overlay(name='ov39', after=ov29, objects=[
    'ov39.o'
])
ov40 = Overlay(name='ov40', after=ov29, objects=[
    'ov40.o'
])
ov41 = Overlay(name='ov41', after=ov30, objects=[
    'ov41.o'
])
ov42 = Overlay(name='ov42', after=ov30, objects=[
    'ov42.o'
])
ov43 = Overlay(name='ov43', after=ov30, objects=[
    'ov43.o'
])
ov44 = Overlay(name='ov44', after=ov30, objects=[
    'ov44.o'
])
ov45 = Overlay(name='ov45', after=ov30, objects=[
    'ov45.o'
])
ov46 = Overlay(name='ov46', after=ov44, objects=[
    'ov46.o'
])
ov47 = Overlay(name='ov47', after=ov44, objects=[
    'ov47.o'
])
ov48 = Overlay(name='ov48', after=ov44, objects=[
    'ov48.o'
])
ov49 = Overlay(name='ov49', after=ov48, objects=[
    'ov49.o'
])
ov50 = Overlay(name='ov50', after=ov48, objects=[
    'ov50.o'
])
ov51 = Overlay(name='ov51', after=ov48, objects=[
    'ov51.o'
])
ov52 = Overlay(name='ov52', after=ov48, objects=[
    'ov52.o'
])
ov53 = Overlay(name='ov53', after=ov50, objects=[
    'ov53.o'
])
ov54 = Overlay(name='ov54', after=ov50, objects=[
    'ov54.o'
])
ov55 = Overlay(name='ov55', after=ov50, objects=[
    'ov55.o'
])
ov56 = Overlay(name='ov56', after=ov50, objects=[
    'ov56.o'
])
ov57 = Overlay(name='ov57', after=ov50, objects=[
    'ov57.o'
])
ov58 = Overlay(name='ov58', after=ov50, objects=[
    'ov58.o'
])
ov59 = Overlay(name='ov59', after=ov50, objects=[
    'ov59.o'
])
ov60 = Overlay(name='ov60', after=ov12, objects=[
    'ov60.o'
])
ov61 = Overlay(name='ov61', after=ov12, objects=[
    'ov61.o'
])

OVERLAYS = [
    ov00, ov01, ov02, ov03, ov04, ov05, ov06, ov07, ov08, ov09,
    ov10, ov11, ov12, ov13, ov14, ov15, ov16, ov17, ov18, ov19,
    ov20, ov21, ov22, ov23, ov24, ov25, ov26, ov27, ov28, ov29,
    ov30, ov31, ov32, ov33, ov34, ov35, ov36, ov37, ov38, ov39,
    ov40, ov41, ov42, ov43, ov44, ov45, ov46, ov47, ov48, ov49,
    ov50, ov51, ov52, ov53, ov54, ov55, ov56, ov57, ov58, ov59,
    ov60, ov61
]

BUILD = 'build/'

with open(f'{BUILD}arm9_linker_script.lcf', 'w') as file:
    file.write('MEMORY {\n')
    file.write('    ARM9      : ORIGIN = 0x2000000 >  arm9.bin\n')
    file.write('    ITCM      : ORIGIN = 0x1ff8000 >> arm9.bin\n')
    file.write('    DTCM      : ORIGIN = 0x27e0000 >> arm9.bin\n')
    file.write('    AUTOLOADS : ORIGIN = 0         >> arm9.bin\n')
    file.write('    FOOTER    : ORIGIN = 0         >> arm9.bin\n')
    file.write('\n')
    file.write('    OV_TABLE  : ORIGIN = 0 > arm9_ovt.bin\n')
    file.write('\n')
    for ov in OVERLAYS:
        file.write(f'    {ov.name} : ORIGIN = ')
        if ov.origin is not None:
            file.write(hex(ov.origin))
        elif type(ov.after) is Overlay:
            file.write(f'AFTER({ov.after.name})')
        elif type(ov.after) is str:
            file.write(f'AFTER({ov.after})')
        file.write(f' > {ov.name}.bin\n')
    file.write('}\n')
    file.write('\n')
    file.write('SECTIONS {\n')
    file.write('    .arm9 : {\n')
    for obj in ARM9_OBJECTS:
        file.write(f'        {obj}(.text)\n')
        file.write(f'        {obj}(.rodata)\n')
        file.write(f'        {obj}(.data)\n')
        file.write(f'        {obj}(.bss)\n')
    file.write('    } > ARM9\n')
    file.write('\n')
    file.write('    .itcm : {\n')
    for obj in ITCM_OBJECTS:
        file.write(f'        {obj}(.text)\n')
        file.write(f'        {obj}(.rodata)\n')
        file.write(f'        {obj}(.bss)\n')
    file.write('    } > ITCM\n')
    file.write('\n')
    file.write('    .dtcm : {\n')
    for obj in DTCM_OBJECTS:
        file.write(f'        {obj}(.data)\n')
        file.write(f'        {obj}(.bss)\n')
    file.write('    } > DTCM\n')
    file.write('\n')
    for ov in OVERLAYS:
        file.write(f'    .{ov.name} : ' + '{\n')
        file.write(f'        {ov.name}_start = .;\n')
        for obj in ov.objects: file.write(f'        {obj}(.text)\n')
        for obj in ov.objects: file.write(f'        {obj}(.rodata)\n')
        file.write('\n')
        file.write(f'        {ov.name}_sinit_start = .;\n')
        for obj in ov.objects: file.write(f'        {obj}(.sinit)\n')
        file.write(f'        {ov.name}_sinit_end = .;\n')
        file.write('\n')
        for obj in ov.objects: file.write(f'        {obj}(.data)\n')
        file.write(f'        {ov.name}_end = .;\n')
        file.write(f'        {ov.name}_size = {ov.name}_end - {ov.name}_start;\n')
        file.write('\n')
        file.write(f'        {ov.name}_bss_start = .;\n')
        for obj in ov.objects: file.write(f'        {obj}(.bss)\n')
        file.write(f'        {ov.name}_bss_end = .;\n')
        file.write(f'        {ov.name}_bss_size = {ov.name}_bss_end - {ov.name}_bss_start;\n')
        file.write('    } > ' + ov.name + '\n')
        file.write('\n')
    file.write('    .arm9_ovt : {\n')
    for (index, ov) in enumerate(OVERLAYS):
        file.write('        ')
        file.write(f'WRITEW {index}; ')
        file.write(f'WRITEW {ov.name}_start; ')
        file.write(f'WRITEW {ov.name}_size; ')
        file.write(f'WRITEW {ov.name}_bss_size; ')
        file.write(f'WRITEW {ov.name}_sinit_start; ')
        file.write(f'WRITEW {ov.name}_sinit_end; ')
        file.write('WRITEW 0; ') # file id will be inserted later
        file.write('WRITEW 0; ') # compression flags, overlay is compressed later
        file.write('\n')
    file.write('    } > OV_TABLE\n')
    file.write('}\n')

with open(f'{BUILD}arm9_objects.txt', 'w') as file:
    DIR = 'asm/'
    for obj in ARM9_OBJECTS: file.write(f'{DIR}{obj}\n')
    for obj in ITCM_OBJECTS: file.write(f'{DIR}{obj}\n')
    for obj in DTCM_OBJECTS: file.write(f'{DIR}{obj}\n')
    file.write('\n')
    for ov in OVERLAYS:
        file.write(f'-og {ov.name},0 -ol {ov.name}\n')
        for obj in ov.objects: file.write(f'    {DIR}{obj}\n')
        file.write('\n')
