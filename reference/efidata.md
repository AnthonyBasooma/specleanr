# EFIPLUS data used to develop ecological sensitivity parameters for riverine species in European streams and rivers.

A `tibble`

## Usage

``` r
data(efidata)
```

## Format

A `tibble` 99 rows and 23 columns.

## Details

BQEs sensitivity to global/climate change in European rivers:
implications for reference conditions and pressure-impact-recovery
chains (Logez et al. 2012). An extract has been made for usage in this
package but for more information write to ihg@boku.ac.at

## References

Logez M, Belliard J, Melcher A, Kremser H, Pletterbauer F, Schmutz S,
Gorges G, Delaigue O, Pont D. 2012. Deliverable D5.1-3: BQEs sensitivity
to global/climate change in European rivers: implications for reference
conditions and pressure-impact-recovery chains.

## Examples

``` r
data("efidata")
efidata
#>            occurrenceID institutionCode collectionCode catalogNumber
#> 1   EFI_DB_Catch_000002        BOKU-IHG           EFI+             2
#> 2   EFI_DB_Catch_000003        BOKU-IHG           EFI+             3
#> 3   EFI_DB_Catch_000004        BOKU-IHG           EFI+             4
#> 4   EFI_DB_Catch_000005        BOKU-IHG           EFI+             5
#> 5   EFI_DB_Catch_000006        BOKU-IHG           EFI+             6
#> 6   EFI_DB_Catch_000001        BOKU-IHG           EFI+             1
#> 7   EFI_DB_Catch_000007        BOKU-IHG           EFI+             7
#> 8   EFI_DB_Catch_000008        BOKU-IHG           EFI+             8
#> 9   EFI_DB_Catch_000009        BOKU-IHG           EFI+             9
#> 10  EFI_DB_Catch_000010        BOKU-IHG           EFI+            10
#> 11  EFI_DB_Catch_000012        BOKU-IHG           EFI+            12
#> 12  EFI_DB_Catch_000013        BOKU-IHG           EFI+            13
#> 13  EFI_DB_Catch_000011        BOKU-IHG           EFI+            11
#> 14  EFI_DB_Catch_000015        BOKU-IHG           EFI+            15
#> 15  EFI_DB_Catch_000016        BOKU-IHG           EFI+            16
#> 16  EFI_DB_Catch_000017        BOKU-IHG           EFI+            17
#> 17  EFI_DB_Catch_000014        BOKU-IHG           EFI+            14
#> 18  EFI_DB_Catch_000018        BOKU-IHG           EFI+            18
#> 19  EFI_DB_Catch_000019        BOKU-IHG           EFI+            19
#> 20  EFI_DB_Catch_000020        BOKU-IHG           EFI+            20
#> 21  EFI_DB_Catch_000021        BOKU-IHG           EFI+            21
#> 22  EFI_DB_Catch_000026        BOKU-IHG           EFI+            26
#> 23  EFI_DB_Catch_000028        BOKU-IHG           EFI+            28
#> 24  EFI_DB_Catch_000027        BOKU-IHG           EFI+            27
#> 25  EFI_DB_Catch_000024        BOKU-IHG           EFI+            24
#> 26  EFI_DB_Catch_000022        BOKU-IHG           EFI+            22
#> 27  EFI_DB_Catch_000023        BOKU-IHG           EFI+            23
#> 28  EFI_DB_Catch_000025        BOKU-IHG           EFI+            25
#> 29  EFI_DB_Catch_000033        BOKU-IHG           EFI+            33
#> 30  EFI_DB_Catch_000038        BOKU-IHG           EFI+            38
#> 31  EFI_DB_Catch_000037        BOKU-IHG           EFI+            37
#> 32  EFI_DB_Catch_000036        BOKU-IHG           EFI+            36
#> 33  EFI_DB_Catch_000034        BOKU-IHG           EFI+            34
#> 34  EFI_DB_Catch_000032        BOKU-IHG           EFI+            32
#> 35  EFI_DB_Catch_000031        BOKU-IHG           EFI+            31
#> 36  EFI_DB_Catch_000030        BOKU-IHG           EFI+            30
#> 37  EFI_DB_Catch_000029        BOKU-IHG           EFI+            29
#> 38  EFI_DB_Catch_000035        BOKU-IHG           EFI+            35
#> 39  EFI_DB_Catch_000044        BOKU-IHG           EFI+            44
#> 40  EFI_DB_Catch_000046        BOKU-IHG           EFI+            46
#> 41  EFI_DB_Catch_000047        BOKU-IHG           EFI+            47
#> 42  EFI_DB_Catch_000045        BOKU-IHG           EFI+            45
#> 43  EFI_DB_Catch_000042        BOKU-IHG           EFI+            42
#> 44  EFI_DB_Catch_000041        BOKU-IHG           EFI+            41
#> 45  EFI_DB_Catch_000039        BOKU-IHG           EFI+            39
#> 46  EFI_DB_Catch_000040        BOKU-IHG           EFI+            40
#> 47  EFI_DB_Catch_000043        BOKU-IHG           EFI+            43
#> 48  EFI_DB_Catch_000048        BOKU-IHG           EFI+            48
#> 49  EFI_DB_Catch_000055        BOKU-IHG           EFI+            55
#> 50  EFI_DB_Catch_000056        BOKU-IHG           EFI+            56
#> 51  EFI_DB_Catch_000054        BOKU-IHG           EFI+            54
#> 52  EFI_DB_Catch_000053        BOKU-IHG           EFI+            53
#> 53  EFI_DB_Catch_000051        BOKU-IHG           EFI+            51
#> 54  EFI_DB_Catch_000050        BOKU-IHG           EFI+            50
#> 55  EFI_DB_Catch_000049        BOKU-IHG           EFI+            49
#> 56  EFI_DB_Catch_000057        BOKU-IHG           EFI+            57
#> 57  EFI_DB_Catch_000052        BOKU-IHG           EFI+            52
#> 58  EFI_DB_Catch_000060        BOKU-IHG           EFI+            60
#> 59  EFI_DB_Catch_000064        BOKU-IHG           EFI+            64
#> 60  EFI_DB_Catch_000063        BOKU-IHG           EFI+            63
#> 61  EFI_DB_Catch_000061        BOKU-IHG           EFI+            61
#> 62  EFI_DB_Catch_000059        BOKU-IHG           EFI+            59
#> 63  EFI_DB_Catch_000058        BOKU-IHG           EFI+            58
#> 64  EFI_DB_Catch_000062        BOKU-IHG           EFI+            62
#> 65  EFI_DB_Catch_000067        BOKU-IHG           EFI+            67
#> 66  EFI_DB_Catch_000071        BOKU-IHG           EFI+            71
#> 67  EFI_DB_Catch_000070        BOKU-IHG           EFI+            70
#> 68  EFI_DB_Catch_000072        BOKU-IHG           EFI+            72
#> 69  EFI_DB_Catch_000066        BOKU-IHG           EFI+            66
#> 70  EFI_DB_Catch_000065        BOKU-IHG           EFI+            65
#> 71  EFI_DB_Catch_000069        BOKU-IHG           EFI+            69
#> 72  EFI_DB_Catch_000068        BOKU-IHG           EFI+            68
#> 73  EFI_DB_Catch_000076        BOKU-IHG           EFI+            76
#> 74  EFI_DB_Catch_000079        BOKU-IHG           EFI+            79
#> 75  EFI_DB_Catch_000077        BOKU-IHG           EFI+            77
#> 76  EFI_DB_Catch_000080        BOKU-IHG           EFI+            80
#> 77  EFI_DB_Catch_000075        BOKU-IHG           EFI+            75
#> 78  EFI_DB_Catch_000074        BOKU-IHG           EFI+            74
#> 79  EFI_DB_Catch_000073        BOKU-IHG           EFI+            73
#> 80  EFI_DB_Catch_000078        BOKU-IHG           EFI+            78
#> 81  EFI_DB_Catch_000085        BOKU-IHG           EFI+            85
#> 82  EFI_DB_Catch_000087        BOKU-IHG           EFI+            87
#> 83  EFI_DB_Catch_000088        BOKU-IHG           EFI+            88
#> 84  EFI_DB_Catch_000086        BOKU-IHG           EFI+            86
#> 85  EFI_DB_Catch_000084        BOKU-IHG           EFI+            84
#> 86  EFI_DB_Catch_000083        BOKU-IHG           EFI+            83
#> 87  EFI_DB_Catch_000081        BOKU-IHG           EFI+            81
#> 88  EFI_DB_Catch_000082        BOKU-IHG           EFI+            82
#> 89  EFI_DB_Catch_000094        BOKU-IHG           EFI+            94
#> 90  EFI_DB_Catch_000096        BOKU-IHG           EFI+            96
#> 91  EFI_DB_Catch_000097        BOKU-IHG           EFI+            97
#> 92  EFI_DB_Catch_000095        BOKU-IHG           EFI+            95
#> 93  EFI_DB_Catch_000092        BOKU-IHG           EFI+            92
#> 94  EFI_DB_Catch_000091        BOKU-IHG           EFI+            91
#> 95  EFI_DB_Catch_000089        BOKU-IHG           EFI+            89
#> 96  EFI_DB_Catch_000090        BOKU-IHG           EFI+            90
#> 97  EFI_DB_Catch_000093        BOKU-IHG           EFI+            93
#> 98  EFI_DB_Catch_000103        BOKU-IHG           EFI+           103
#> 99  EFI_DB_Catch_000104        BOKU-IHG           EFI+           104
#> 100 EFI_DB_Catch_000102        BOKU-IHG           EFI+           102
#> 101 EFI_DB_Catch_000101        BOKU-IHG           EFI+           101
#> 102 EFI_DB_Catch_000100        BOKU-IHG           EFI+           100
#> 103 EFI_DB_Catch_000099        BOKU-IHG           EFI+            99
#> 104 EFI_DB_Catch_000098        BOKU-IHG           EFI+            98
#> 105 EFI_DB_Catch_000106        BOKU-IHG           EFI+           106
#> 106 EFI_DB_Catch_000107        BOKU-IHG           EFI+           107
#> 107 EFI_DB_Catch_000108        BOKU-IHG           EFI+           108
#> 108 EFI_DB_Catch_000109        BOKU-IHG           EFI+           109
#> 109 EFI_DB_Catch_000110        BOKU-IHG           EFI+           110
#> 110 EFI_DB_Catch_000111        BOKU-IHG           EFI+           111
#> 111 EFI_DB_Catch_000105        BOKU-IHG           EFI+           105
#> 112 EFI_DB_Catch_000115        BOKU-IHG           EFI+           115
#> 113 EFI_DB_Catch_000116        BOKU-IHG           EFI+           116
#> 114 EFI_DB_Catch_000119        BOKU-IHG           EFI+           119
#> 115 EFI_DB_Catch_000118        BOKU-IHG           EFI+           118
#> 116 EFI_DB_Catch_000112        BOKU-IHG           EFI+           112
#> 117 EFI_DB_Catch_000114        BOKU-IHG           EFI+           114
#> 118 EFI_DB_Catch_000113        BOKU-IHG           EFI+           113
#> 119 EFI_DB_Catch_000117        BOKU-IHG           EFI+           117
#> 120 EFI_DB_Catch_000123        BOKU-IHG           EFI+           123
#> 121 EFI_DB_Catch_000126        BOKU-IHG           EFI+           126
#> 122 EFI_DB_Catch_000124        BOKU-IHG           EFI+           124
#> 123 EFI_DB_Catch_000127        BOKU-IHG           EFI+           127
#> 124 EFI_DB_Catch_000122        BOKU-IHG           EFI+           122
#> 125 EFI_DB_Catch_000121        BOKU-IHG           EFI+           121
#> 126 EFI_DB_Catch_000120        BOKU-IHG           EFI+           120
#> 127 EFI_DB_Catch_000125        BOKU-IHG           EFI+           125
#> 128 EFI_DB_Catch_000133        BOKU-IHG           EFI+           133
#> 129 EFI_DB_Catch_000136        BOKU-IHG           EFI+           136
#> 130 EFI_DB_Catch_000135        BOKU-IHG           EFI+           135
#> 131 EFI_DB_Catch_000134        BOKU-IHG           EFI+           134
#> 132 EFI_DB_Catch_000132        BOKU-IHG           EFI+           132
#> 133 EFI_DB_Catch_000131        BOKU-IHG           EFI+           131
#> 134 EFI_DB_Catch_000130        BOKU-IHG           EFI+           130
#> 135 EFI_DB_Catch_000128        BOKU-IHG           EFI+           128
#> 136 EFI_DB_Catch_000129        BOKU-IHG           EFI+           129
#> 137 EFI_DB_Catch_000142        BOKU-IHG           EFI+           142
#> 138 EFI_DB_Catch_000143        BOKU-IHG           EFI+           143
#> 139 EFI_DB_Catch_000141        BOKU-IHG           EFI+           141
#> 140 EFI_DB_Catch_000139        BOKU-IHG           EFI+           139
#> 141 EFI_DB_Catch_000138        BOKU-IHG           EFI+           138
#> 142 EFI_DB_Catch_000137        BOKU-IHG           EFI+           137
#> 143 EFI_DB_Catch_000140        BOKU-IHG           EFI+           140
#> 144 EFI_DB_Catch_000144        BOKU-IHG           EFI+           144
#> 145 EFI_DB_Catch_000145        BOKU-IHG           EFI+           145
#> 146 EFI_DB_Catch_000146        BOKU-IHG           EFI+           146
#> 147 EFI_DB_Catch_000147        BOKU-IHG           EFI+           147
#> 148 EFI_DB_Catch_000148        BOKU-IHG           EFI+           148
#> 149 EFI_DB_Catch_000152        BOKU-IHG           EFI+           152
#> 150 EFI_DB_Catch_000153        BOKU-IHG           EFI+           153
#> 151 EFI_DB_Catch_000151        BOKU-IHG           EFI+           151
#> 152 EFI_DB_Catch_000150        BOKU-IHG           EFI+           150
#> 153 EFI_DB_Catch_000149        BOKU-IHG           EFI+           149
#> 154 EFI_DB_Catch_000154        BOKU-IHG           EFI+           154
#> 155 EFI_DB_Catch_000155        BOKU-IHG           EFI+           155
#> 156 EFI_DB_Catch_000156        BOKU-IHG           EFI+           156
#> 157 EFI_DB_Catch_000157        BOKU-IHG           EFI+           157
#> 158 EFI_DB_Catch_000158        BOKU-IHG           EFI+           158
#> 159 EFI_DB_Catch_000159        BOKU-IHG           EFI+           159
#> 160 EFI_DB_Catch_000160        BOKU-IHG           EFI+           160
#> 161 EFI_DB_Catch_000161        BOKU-IHG           EFI+           161
#> 162 EFI_DB_Catch_000162        BOKU-IHG           EFI+           162
#> 163 EFI_DB_Catch_000163        BOKU-IHG           EFI+           163
#> 164 EFI_DB_Catch_000164        BOKU-IHG           EFI+           164
#> 165 EFI_DB_Catch_000165        BOKU-IHG           EFI+           165
#> 166 EFI_DB_Catch_000166        BOKU-IHG           EFI+           166
#> 167 EFI_DB_Catch_000168        BOKU-IHG           EFI+           168
#> 168 EFI_DB_Catch_000167        BOKU-IHG           EFI+           167
#> 169 EFI_DB_Catch_000169        BOKU-IHG           EFI+           169
#> 170 EFI_DB_Catch_000170        BOKU-IHG           EFI+           170
#> 171 EFI_DB_Catch_000171        BOKU-IHG           EFI+           171
#> 172 EFI_DB_Catch_000172        BOKU-IHG           EFI+           172
#> 173 EFI_DB_Catch_000173        BOKU-IHG           EFI+           173
#> 174 EFI_DB_Catch_000174        BOKU-IHG           EFI+           174
#> 175 EFI_DB_Catch_000175        BOKU-IHG           EFI+           175
#> 176 EFI_DB_Catch_000176        BOKU-IHG           EFI+           176
#> 177 EFI_DB_Catch_000178        BOKU-IHG           EFI+           178
#> 178 EFI_DB_Catch_000181        BOKU-IHG           EFI+           181
#> 179 EFI_DB_Catch_000179        BOKU-IHG           EFI+           179
#> 180 EFI_DB_Catch_000177        BOKU-IHG           EFI+           177
#> 181 EFI_DB_Catch_000180        BOKU-IHG           EFI+           180
#> 182 EFI_DB_Catch_000182        BOKU-IHG           EFI+           182
#> 183 EFI_DB_Catch_000183        BOKU-IHG           EFI+           183
#> 184 EFI_DB_Catch_000184        BOKU-IHG           EFI+           184
#> 185 EFI_DB_Catch_000185        BOKU-IHG           EFI+           185
#> 186 EFI_DB_Catch_000186        BOKU-IHG           EFI+           186
#> 187 EFI_DB_Catch_000187        BOKU-IHG           EFI+           187
#> 188 EFI_DB_Catch_000188        BOKU-IHG           EFI+           188
#> 189 EFI_DB_Catch_000189        BOKU-IHG           EFI+           189
#> 190 EFI_DB_Catch_000190        BOKU-IHG           EFI+           190
#> 191 EFI_DB_Catch_000193        BOKU-IHG           EFI+           193
#> 192 EFI_DB_Catch_000194        BOKU-IHG           EFI+           194
#> 193 EFI_DB_Catch_000191        BOKU-IHG           EFI+           191
#> 194 EFI_DB_Catch_000192        BOKU-IHG           EFI+           192
#> 195 EFI_DB_Catch_000195        BOKU-IHG           EFI+           195
#> 196 EFI_DB_Catch_000196        BOKU-IHG           EFI+           196
#> 197 EFI_DB_Catch_000197        BOKU-IHG           EFI+           197
#> 198 EFI_DB_Catch_000198        BOKU-IHG           EFI+           198
#> 199 EFI_DB_Catch_000199        BOKU-IHG           EFI+           199
#> 200 EFI_DB_Catch_000200        BOKU-IHG           EFI+           200
#> 201 EFI_DB_Catch_000204        BOKU-IHG           EFI+           204
#> 202 EFI_DB_Catch_000211        BOKU-IHG           EFI+           211
#> 203 EFI_DB_Catch_000210        BOKU-IHG           EFI+           210
#> 204 EFI_DB_Catch_000209        BOKU-IHG           EFI+           209
#> 205 EFI_DB_Catch_000208        BOKU-IHG           EFI+           208
#> 206 EFI_DB_Catch_000207        BOKU-IHG           EFI+           207
#> 207 EFI_DB_Catch_000205        BOKU-IHG           EFI+           205
#> 208 EFI_DB_Catch_000203        BOKU-IHG           EFI+           203
#> 209 EFI_DB_Catch_000202        BOKU-IHG           EFI+           202
#> 210 EFI_DB_Catch_000201        BOKU-IHG           EFI+           201
#> 211 EFI_DB_Catch_000206        BOKU-IHG           EFI+           206
#> 212 EFI_DB_Catch_000219        BOKU-IHG           EFI+           219
#> 213 EFI_DB_Catch_000213        BOKU-IHG           EFI+           213
#> 214 EFI_DB_Catch_000223        BOKU-IHG           EFI+           223
#> 215 EFI_DB_Catch_000222        BOKU-IHG           EFI+           222
#> 216 EFI_DB_Catch_000221        BOKU-IHG           EFI+           221
#> 217 EFI_DB_Catch_000220        BOKU-IHG           EFI+           220
#> 218 EFI_DB_Catch_000217        BOKU-IHG           EFI+           217
#> 219 EFI_DB_Catch_000216        BOKU-IHG           EFI+           216
#> 220 EFI_DB_Catch_000212        BOKU-IHG           EFI+           212
#> 221 EFI_DB_Catch_000214        BOKU-IHG           EFI+           214
#> 222 EFI_DB_Catch_000215        BOKU-IHG           EFI+           215
#> 223 EFI_DB_Catch_000218        BOKU-IHG           EFI+           218
#> 224 EFI_DB_Catch_000224        BOKU-IHG           EFI+           224
#> 225 EFI_DB_Catch_000226        BOKU-IHG           EFI+           226
#> 226 EFI_DB_Catch_000225        BOKU-IHG           EFI+           225
#> 227 EFI_DB_Catch_000227        BOKU-IHG           EFI+           227
#> 228 EFI_DB_Catch_000228        BOKU-IHG           EFI+           228
#> 229 EFI_DB_Catch_000229        BOKU-IHG           EFI+           229
#> 230 EFI_DB_Catch_000230        BOKU-IHG           EFI+           230
#> 231 EFI_DB_Catch_000238        BOKU-IHG           EFI+           238
#> 232 EFI_DB_Catch_000236        BOKU-IHG           EFI+           236
#> 233 EFI_DB_Catch_000241        BOKU-IHG           EFI+           241
#> 234 EFI_DB_Catch_000239        BOKU-IHG           EFI+           239
#> 235 EFI_DB_Catch_000237        BOKU-IHG           EFI+           237
#> 236 EFI_DB_Catch_000234        BOKU-IHG           EFI+           234
#> 237 EFI_DB_Catch_000231        BOKU-IHG           EFI+           231
#> 238 EFI_DB_Catch_000233        BOKU-IHG           EFI+           233
#> 239 EFI_DB_Catch_000240        BOKU-IHG           EFI+           240
#> 240 EFI_DB_Catch_000232        BOKU-IHG           EFI+           232
#> 241 EFI_DB_Catch_000235        BOKU-IHG           EFI+           235
#> 242 EFI_DB_Catch_000249        BOKU-IHG           EFI+           249
#> 243 EFI_DB_Catch_000250        BOKU-IHG           EFI+           250
#> 244 EFI_DB_Catch_000248        BOKU-IHG           EFI+           248
#> 245 EFI_DB_Catch_000247        BOKU-IHG           EFI+           247
#> 246 EFI_DB_Catch_000245        BOKU-IHG           EFI+           245
#> 247 EFI_DB_Catch_000244        BOKU-IHG           EFI+           244
#> 248 EFI_DB_Catch_000242        BOKU-IHG           EFI+           242
#> 249 EFI_DB_Catch_000243        BOKU-IHG           EFI+           243
#> 250 EFI_DB_Catch_000251        BOKU-IHG           EFI+           251
#> 251 EFI_DB_Catch_000246        BOKU-IHG           EFI+           246
#> 252 EFI_DB_Catch_000254        BOKU-IHG           EFI+           254
#> 253 EFI_DB_Catch_000258        BOKU-IHG           EFI+           258
#> 254 EFI_DB_Catch_000257        BOKU-IHG           EFI+           257
#> 255 EFI_DB_Catch_000255        BOKU-IHG           EFI+           255
#> 256 EFI_DB_Catch_000253        BOKU-IHG           EFI+           253
#> 257 EFI_DB_Catch_000252        BOKU-IHG           EFI+           252
#> 258 EFI_DB_Catch_000256        BOKU-IHG           EFI+           256
#> 259 EFI_DB_Catch_000264        BOKU-IHG           EFI+           264
#> 260 EFI_DB_Catch_000259        BOKU-IHG           EFI+           259
#> 261 EFI_DB_Catch_000266        BOKU-IHG           EFI+           266
#> 262 EFI_DB_Catch_000267        BOKU-IHG           EFI+           267
#> 263 EFI_DB_Catch_000265        BOKU-IHG           EFI+           265
#> 264 EFI_DB_Catch_000262        BOKU-IHG           EFI+           262
#> 265 EFI_DB_Catch_000260        BOKU-IHG           EFI+           260
#> 266 EFI_DB_Catch_000261        BOKU-IHG           EFI+           261
#> 267 EFI_DB_Catch_000263        BOKU-IHG           EFI+           263
#> 268 EFI_DB_Catch_000273        BOKU-IHG           EFI+           273
#> 269 EFI_DB_Catch_000277        BOKU-IHG           EFI+           277
#> 270 EFI_DB_Catch_000276        BOKU-IHG           EFI+           276
#> 271 EFI_DB_Catch_000274        BOKU-IHG           EFI+           274
#> 272 EFI_DB_Catch_000272        BOKU-IHG           EFI+           272
#> 273 EFI_DB_Catch_000271        BOKU-IHG           EFI+           271
#> 274 EFI_DB_Catch_000270        BOKU-IHG           EFI+           270
#> 275 EFI_DB_Catch_000269        BOKU-IHG           EFI+           269
#> 276 EFI_DB_Catch_000268        BOKU-IHG           EFI+           268
#> 277 EFI_DB_Catch_000275        BOKU-IHG           EFI+           275
#> 278 EFI_DB_Catch_000278        BOKU-IHG           EFI+           278
#> 279 EFI_DB_Catch_000279        BOKU-IHG           EFI+           279
#> 280 EFI_DB_Catch_000280        BOKU-IHG           EFI+           280
#> 281 EFI_DB_Catch_000281        BOKU-IHG           EFI+           281
#> 282 EFI_DB_Catch_000282        BOKU-IHG           EFI+           282
#> 283 EFI_DB_Catch_000287        BOKU-IHG           EFI+           287
#> 284 EFI_DB_Catch_000286        BOKU-IHG           EFI+           286
#> 285 EFI_DB_Catch_000285        BOKU-IHG           EFI+           285
#> 286 EFI_DB_Catch_000284        BOKU-IHG           EFI+           284
#> 287 EFI_DB_Catch_000283        BOKU-IHG           EFI+           283
#> 288 EFI_DB_Catch_000288        BOKU-IHG           EFI+           288
#> 289 EFI_DB_Catch_000289        BOKU-IHG           EFI+           289
#> 290 EFI_DB_Catch_000290        BOKU-IHG           EFI+           290
#> 291 EFI_DB_Catch_000291        BOKU-IHG           EFI+           291
#> 292 EFI_DB_Catch_000292        BOKU-IHG           EFI+           292
#> 293 EFI_DB_Catch_000293        BOKU-IHG           EFI+           293
#> 294 EFI_DB_Catch_000294        BOKU-IHG           EFI+           294
#> 295 EFI_DB_Catch_000295        BOKU-IHG           EFI+           295
#> 296 EFI_DB_Catch_000297        BOKU-IHG           EFI+           297
#> 297 EFI_DB_Catch_000300        BOKU-IHG           EFI+           300
#> 298 EFI_DB_Catch_000298        BOKU-IHG           EFI+           298
#> 299 EFI_DB_Catch_000296        BOKU-IHG           EFI+           296
#> 300 EFI_DB_Catch_000299        BOKU-IHG           EFI+           299
#>      basisOfRecord              scientificName           order      family
#> 1   LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 2   LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 3   LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 4   LivingSpecimen            Salvelinus umbla   Salmoniformes  Salmonidae
#> 5   LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 6   LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 7   LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 8   LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 9   LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 10  LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 11  LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 12  LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 13  LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 14  LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 15  LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 16  LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 17  LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 18  LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 19  LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 20  LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 21  LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 22  LivingSpecimen           Phoxinus phoxinus   Cypriniformes  Cyprinidae
#> 23  LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 24  LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 25  LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 26  LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 27  LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 28  LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 29  LivingSpecimen                 Gobio gobio   Cypriniformes  Cyprinidae
#> 30  LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 31  LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 32  LivingSpecimen           Phoxinus phoxinus   Cypriniformes  Cyprinidae
#> 33  LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 34  LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 35  LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 36  LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 37  LivingSpecimen           Anguilla anguilla  Anguilliformes  Anguilidae
#> 38  LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 39  LivingSpecimen           Phoxinus phoxinus   Cypriniformes  Cyprinidae
#> 40  LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 41  LivingSpecimen Scardinius erythrophthalmus   Cypriniformes  Cyprinidae
#> 42  LivingSpecimen             Rutilus rutilus   Cypriniformes  Cyprinidae
#> 43  LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 44  LivingSpecimen                 Gobio gobio   Cypriniformes  Cyprinidae
#> 45  LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 46  LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 47  LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 48  LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 49  LivingSpecimen           Phoxinus phoxinus   Cypriniformes  Cyprinidae
#> 50  LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 51  LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 52  LivingSpecimen         Leuciscus leuciscus   Cypriniformes  Cyprinidae
#> 53  LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 54  LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 55  LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 56  LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 57  LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 58  LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 59  LivingSpecimen                 Tinca tinca   Cypriniformes  Cyprinidae
#> 60  LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 61  LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 62  LivingSpecimen                 Esox lucius     Esociformes    Esocidae
#> 63  LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 64  LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 65  LivingSpecimen                 Gobio gobio   Cypriniformes  Cyprinidae
#> 66  LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 67  LivingSpecimen             Rutilus rutilus   Cypriniformes  Cyprinidae
#> 68  LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 69  LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 70  LivingSpecimen           Anguilla anguilla  Anguilliformes  Anguilidae
#> 71  LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 72  LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 73  LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 74  LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 75  LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 76  LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 77  LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 78  LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 79  LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 80  LivingSpecimen           Phoxinus phoxinus   Cypriniformes  Cyprinidae
#> 81  LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 82  LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 83  LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 84  LivingSpecimen           Phoxinus phoxinus   Cypriniformes  Cyprinidae
#> 85  LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 86  LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 87  LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 88  LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 89  LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 90  LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 91  LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 92  LivingSpecimen           Phoxinus phoxinus   Cypriniformes  Cyprinidae
#> 93  LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 94  LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 95  LivingSpecimen           Anguilla anguilla  Anguilliformes  Anguilidae
#> 96  LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 97  LivingSpecimen         Leuciscus leuciscus   Cypriniformes  Cyprinidae
#> 98  LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 99  LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 100 LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 101 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 102 LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 103 LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 104 LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 105 LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 106 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 107 LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 108 LivingSpecimen           Phoxinus phoxinus   Cypriniformes  Cyprinidae
#> 109 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 110 LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 111 LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 112 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 113 LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 114 LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 115 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 116 LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 117 LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 118 LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 119 LivingSpecimen           Phoxinus phoxinus   Cypriniformes  Cyprinidae
#> 120 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 121 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 122 LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 123 LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 124 LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 125 LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 126 LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 127 LivingSpecimen           Phoxinus phoxinus   Cypriniformes  Cyprinidae
#> 128 LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 129 LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 130 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 131 LivingSpecimen           Phoxinus phoxinus   Cypriniformes  Cyprinidae
#> 132 LivingSpecimen         Leuciscus leuciscus   Cypriniformes  Cyprinidae
#> 133 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 134 LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 135 LivingSpecimen           Anguilla anguilla  Anguilliformes  Anguilidae
#> 136 LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 137 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 138 LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 139 LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 140 LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 141 LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 142 LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 143 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 144 LivingSpecimen           Anguilla anguilla  Anguilliformes  Anguilidae
#> 145 LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 146 LivingSpecimen                 Esox lucius     Esociformes    Esocidae
#> 147 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 148 LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 149 LivingSpecimen         Leuciscus leuciscus   Cypriniformes  Cyprinidae
#> 150 LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 151 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 152 LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 153 LivingSpecimen           Anguilla anguilla  Anguilliformes  Anguilidae
#> 154 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 155 LivingSpecimen           Anguilla anguilla  Anguilliformes  Anguilidae
#> 156 LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 157 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 158 LivingSpecimen         Leuciscus leuciscus   Cypriniformes  Cyprinidae
#> 159 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 160 LivingSpecimen           Anguilla anguilla  Anguilliformes  Anguilidae
#> 161 LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 162 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 163 LivingSpecimen         Leuciscus leuciscus   Cypriniformes  Cyprinidae
#> 164 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 165 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 166 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 167 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 168 LivingSpecimen           Anguilla anguilla  Anguilliformes  Anguilidae
#> 169 LivingSpecimen           Alburnus alburnus   Cypriniformes  Cyprinidae
#> 170 LivingSpecimen           Anguilla anguilla  Anguilliformes  Anguilidae
#> 171 LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 172 LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 173 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 174 LivingSpecimen           Phoxinus phoxinus   Cypriniformes  Cyprinidae
#> 175 LivingSpecimen             Rutilus rutilus   Cypriniformes  Cyprinidae
#> 176 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 177 LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 178 LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 179 LivingSpecimen                 Esox lucius     Esociformes    Esocidae
#> 180 LivingSpecimen           Anguilla anguilla  Anguilliformes  Anguilidae
#> 181 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 182 LivingSpecimen           Anguilla anguilla  Anguilliformes  Anguilidae
#> 183 LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 184 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 185 LivingSpecimen             Rutilus rutilus   Cypriniformes  Cyprinidae
#> 186 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 187 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 188 LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 189 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 190 LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 191 LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 192 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 193 LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 194 LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 195 LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 196 LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 197 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 198 LivingSpecimen      Salmo trutta lacustris   Salmoniformes  Salmonidae
#> 199 LivingSpecimen       Salvelinus fontinalis   Salmoniformes  Salmonidae
#> 200 LivingSpecimen         Thymallus thymallus   Salmoniformes  Salmonidae
#> 201 LivingSpecimen         Carassius carassius   Cypriniformes  Cyprinidae
#> 202 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 203 LivingSpecimen             Rutilus rutilus   Cypriniformes  Cyprinidae
#> 204 LivingSpecimen         Pseudorasbora parva   Cypriniformes  Cyprinidae
#> 205 LivingSpecimen           Phoxinus phoxinus   Cypriniformes  Cyprinidae
#> 206 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 207 LivingSpecimen          Chondrostoma nasus   Cypriniformes  Cyprinidae
#> 208 LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 209 LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 210 LivingSpecimen     Alburnoides bipunctatus   Cypriniformes  Cyprinidae
#> 211 LivingSpecimen                 Gobio gobio   Cypriniformes  Cyprinidae
#> 212 LivingSpecimen                 Gobio gobio   Cypriniformes  Cyprinidae
#> 213 LivingSpecimen           Anguilla anguilla  Anguilliformes  Anguilidae
#> 214 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 215 LivingSpecimen           Phoxinus phoxinus   Cypriniformes  Cyprinidae
#> 216 LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 217 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 218 LivingSpecimen                Cottus gobio Scorpaeniformes    Cottidae
#> 219 LivingSpecimen          Chondrostoma nasus   Cypriniformes  Cyprinidae
#> 220 LivingSpecimen     Alburnoides bipunctatus   Cypriniformes  Cyprinidae
#> 221 LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 222 LivingSpecimen               Barbus barbus   Cypriniformes  Cyprinidae
#> 223 LivingSpecimen             Cyprinus carpio   Cypriniformes  Cyprinidae
#> 224 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 225 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 226 LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 227 LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 228 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 229 LivingSpecimen         Oncorhynchus mykiss   Salmoniformes  Salmonidae
#> 230 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 231 LivingSpecimen                   Lota lota      Gadiformes     Lotidae
#> 232 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 233 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 234 LivingSpecimen           Perca fluviatilis     Perciformes    Percidae
#> 235 LivingSpecimen         Leuciscus leuciscus   Cypriniformes  Cyprinidae
#> 236 LivingSpecimen                 Gobio gobio   Cypriniformes  Cyprinidae
#> 237 LivingSpecimen               Abramis brama   Cypriniformes  Cyprinidae
#> 238 LivingSpecimen                 Esox lucius     Esociformes    Esocidae
#> 239 LivingSpecimen             Rutilus rutilus   Cypriniformes  Cyprinidae
#> 240 LivingSpecimen           Alburnus alburnus   Cypriniformes  Cyprinidae
#> 241 LivingSpecimen        Gymnocephalus cernua     Perciformes    Percidae
#> 242 LivingSpecimen           Perca fluviatilis     Perciformes    Percidae
#> 243 LivingSpecimen             Rutilus rutilus   Cypriniformes  Cyprinidae
#> 244 LivingSpecimen         Leuciscus leuciscus   Cypriniformes  Cyprinidae
#> 245 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 246 LivingSpecimen                 Gobio gobio   Cypriniformes  Cyprinidae
#> 247 LivingSpecimen                 Esox lucius     Esociformes    Esocidae
#> 248 LivingSpecimen               Abramis brama   Cypriniformes  Cyprinidae
#> 249 LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 250 LivingSpecimen                 Tinca tinca   Cypriniformes  Cyprinidae
#> 251 LivingSpecimen        Gymnocephalus cernua     Perciformes    Percidae
#> 252 LivingSpecimen                 Gobio gobio   Cypriniformes  Cyprinidae
#> 253 LivingSpecimen             Rutilus rutilus   Cypriniformes  Cyprinidae
#> 254 LivingSpecimen           Perca fluviatilis     Perciformes    Percidae
#> 255 LivingSpecimen        Gymnocephalus cernua     Perciformes    Percidae
#> 256 LivingSpecimen                 Esox lucius     Esociformes    Esocidae
#> 257 LivingSpecimen           Alburnus alburnus   Cypriniformes  Cyprinidae
#> 258 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 259 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 260 LivingSpecimen           Alburnus alburnus   Cypriniformes  Cyprinidae
#> 261 LivingSpecimen           Perca fluviatilis     Perciformes    Percidae
#> 262 LivingSpecimen             Rutilus rutilus   Cypriniformes  Cyprinidae
#> 263 LivingSpecimen         Leuciscus leuciscus   Cypriniformes  Cyprinidae
#> 264 LivingSpecimen                 Gobio gobio   Cypriniformes  Cyprinidae
#> 265 LivingSpecimen           Carassius gibelio   Cypriniformes  Cyprinidae
#> 266 LivingSpecimen                 Esox lucius     Esociformes    Esocidae
#> 267 LivingSpecimen        Gymnocephalus cernua     Perciformes    Percidae
#> 268 LivingSpecimen           Perca fluviatilis     Perciformes    Percidae
#> 269 LivingSpecimen                 Tinca tinca   Cypriniformes  Cyprinidae
#> 270 LivingSpecimen Scardinius erythrophthalmus   Cypriniformes  Cyprinidae
#> 271 LivingSpecimen             Rutilus rutilus   Cypriniformes  Cyprinidae
#> 272 LivingSpecimen         Leuciscus leuciscus   Cypriniformes  Cyprinidae
#> 273 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 274 LivingSpecimen                 Gobio gobio   Cypriniformes  Cyprinidae
#> 275 LivingSpecimen                 Esox lucius     Esociformes    Esocidae
#> 276 LivingSpecimen         Barbatula barbatula   Cypriniformes Balitoridae
#> 277 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 278 LivingSpecimen                 Esox lucius     Esociformes    Esocidae
#> 279 LivingSpecimen                 Gobio gobio   Cypriniformes  Cyprinidae
#> 280 LivingSpecimen         Leuciscus leuciscus   Cypriniformes  Cyprinidae
#> 281 LivingSpecimen           Perca fluviatilis     Perciformes    Percidae
#> 282 LivingSpecimen             Rutilus rutilus   Cypriniformes  Cyprinidae
#> 283 LivingSpecimen           Perca fluviatilis     Perciformes    Percidae
#> 284 LivingSpecimen         Leuciscus leuciscus   Cypriniformes  Cyprinidae
#> 285 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 286 LivingSpecimen                 Gobio gobio   Cypriniformes  Cyprinidae
#> 287 LivingSpecimen                 Esox lucius     Esociformes    Esocidae
#> 288 LivingSpecimen             Rutilus rutilus   Cypriniformes  Cyprinidae
#> 289 LivingSpecimen                 Esox lucius     Esociformes    Esocidae
#> 290 LivingSpecimen                 Gobio gobio   Cypriniformes  Cyprinidae
#> 291 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 292 LivingSpecimen         Leuciscus leuciscus   Cypriniformes  Cyprinidae
#> 293 LivingSpecimen           Perca fluviatilis     Perciformes    Percidae
#> 294 LivingSpecimen             Rutilus rutilus   Cypriniformes  Cyprinidae
#> 295 LivingSpecimen                 Tinca tinca   Cypriniformes  Cyprinidae
#> 296 LivingSpecimen           Squalius cephalus   Cypriniformes  Cyprinidae
#> 297 LivingSpecimen          Salmo trutta fario   Salmoniformes  Salmonidae
#> 298 LivingSpecimen           Perca fluviatilis     Perciformes    Percidae
#> 299 LivingSpecimen                 Gobio gobio   Cypriniformes  Cyprinidae
#> 300 LivingSpecimen             Rutilus rutilus   Cypriniformes  Cyprinidae
#>             genus  specificEpithet infraspecificEpithet
#> 1          Cottus            gobio                     
#> 2    Oncorhynchus           mykiss                     
#> 3           Salmo           trutta                fario
#> 4      Salvelinus            umbla                     
#> 5       Thymallus        thymallus                     
#> 6       Barbatula        barbatula                     
#> 7          Cottus            gobio                     
#> 8    Oncorhynchus           mykiss                     
#> 9           Salmo           trutta                fario
#> 10      Thymallus        thymallus                     
#> 11   Oncorhynchus           mykiss                     
#> 12          Salmo           trutta                fario
#> 13         Cottus            gobio                     
#> 14   Oncorhynchus           mykiss                     
#> 15          Salmo           trutta                fario
#> 16      Thymallus        thymallus                     
#> 17         Cottus            gobio                     
#> 18         Cottus            gobio                     
#> 19   Oncorhynchus           mykiss                     
#> 20          Salmo           trutta                fario
#> 21      Barbatula        barbatula                     
#> 22       Phoxinus         phoxinus                     
#> 23      Thymallus        thymallus                     
#> 24          Salmo           trutta                fario
#> 25       Squalius         cephalus                     
#> 26         Barbus           barbus                     
#> 27         Cottus            gobio                     
#> 28   Oncorhynchus           mykiss                     
#> 29          Gobio            gobio                     
#> 30      Thymallus        thymallus                     
#> 31          Salmo           trutta                fario
#> 32       Phoxinus         phoxinus                     
#> 33       Squalius         cephalus                     
#> 34         Cottus            gobio                     
#> 35         Barbus           barbus                     
#> 36      Barbatula        barbatula                     
#> 37       Anguilla         anguilla                     
#> 38   Oncorhynchus           mykiss                     
#> 39       Phoxinus         phoxinus                     
#> 40          Salmo           trutta                fario
#> 41     Scardinius erythrophthalmus                     
#> 42        Rutilus          rutilus                     
#> 43       Squalius         cephalus                     
#> 44          Gobio            gobio                     
#> 45      Barbatula        barbatula                     
#> 46         Cottus            gobio                     
#> 47   Oncorhynchus           mykiss                     
#> 48      Thymallus        thymallus                     
#> 49       Phoxinus         phoxinus                     
#> 50          Salmo           trutta                fario
#> 51   Oncorhynchus           mykiss                     
#> 52      Leuciscus        leuciscus                     
#> 53         Cottus            gobio                     
#> 54         Barbus           barbus                     
#> 55      Barbatula        barbatula                     
#> 56      Thymallus        thymallus                     
#> 57       Squalius         cephalus                     
#> 58       Squalius         cephalus                     
#> 59          Tinca            tinca                     
#> 60      Thymallus        thymallus                     
#> 61   Oncorhynchus           mykiss                     
#> 62           Esox           lucius                     
#> 63         Barbus           barbus                     
#> 64          Salmo           trutta                fario
#> 65          Gobio            gobio                     
#> 66          Salmo           trutta                fario
#> 67        Rutilus          rutilus                     
#> 68      Thymallus        thymallus                     
#> 69         Barbus           barbus                     
#> 70       Anguilla         anguilla                     
#> 71   Oncorhynchus           mykiss                     
#> 72       Squalius         cephalus                     
#> 73       Squalius         cephalus                     
#> 74          Salmo           trutta                fario
#> 75   Oncorhynchus           mykiss                     
#> 76      Thymallus        thymallus                     
#> 77         Cottus            gobio                     
#> 78         Barbus           barbus                     
#> 79      Barbatula        barbatula                     
#> 80       Phoxinus         phoxinus                     
#> 81   Oncorhynchus           mykiss                     
#> 82          Salmo           trutta                fario
#> 83      Thymallus        thymallus                     
#> 84       Phoxinus         phoxinus                     
#> 85       Squalius         cephalus                     
#> 86         Cottus            gobio                     
#> 87      Barbatula        barbatula                     
#> 88         Barbus           barbus                     
#> 89   Oncorhynchus           mykiss                     
#> 90          Salmo           trutta                fario
#> 91      Thymallus        thymallus                     
#> 92       Phoxinus         phoxinus                     
#> 93       Squalius         cephalus                     
#> 94         Barbus           barbus                     
#> 95       Anguilla         anguilla                     
#> 96      Barbatula        barbatula                     
#> 97      Leuciscus        leuciscus                     
#> 98          Salmo           trutta                fario
#> 99      Thymallus        thymallus                     
#> 100  Oncorhynchus           mykiss                     
#> 101      Squalius         cephalus                     
#> 102        Cottus            gobio                     
#> 103        Barbus           barbus                     
#> 104     Barbatula        barbatula                     
#> 105        Barbus           barbus                     
#> 106      Squalius         cephalus                     
#> 107  Oncorhynchus           mykiss                     
#> 108      Phoxinus         phoxinus                     
#> 109         Salmo           trutta                fario
#> 110     Thymallus        thymallus                     
#> 111     Barbatula        barbatula                     
#> 112      Squalius         cephalus                     
#> 113  Oncorhynchus           mykiss                     
#> 114     Thymallus        thymallus                     
#> 115         Salmo           trutta                fario
#> 116     Barbatula        barbatula                     
#> 117        Cottus            gobio                     
#> 118        Barbus           barbus                     
#> 119      Phoxinus         phoxinus                     
#> 120      Squalius         cephalus                     
#> 121         Salmo           trutta                fario
#> 122  Oncorhynchus           mykiss                     
#> 123     Thymallus        thymallus                     
#> 124        Cottus            gobio                     
#> 125        Barbus           barbus                     
#> 126     Barbatula        barbatula                     
#> 127      Phoxinus         phoxinus                     
#> 128  Oncorhynchus           mykiss                     
#> 129     Thymallus        thymallus                     
#> 130         Salmo           trutta                fario
#> 131      Phoxinus         phoxinus                     
#> 132     Leuciscus        leuciscus                     
#> 133      Squalius         cephalus                     
#> 134        Barbus           barbus                     
#> 135      Anguilla         anguilla                     
#> 136     Barbatula        barbatula                     
#> 137         Salmo           trutta                fario
#> 138     Thymallus        thymallus                     
#> 139  Oncorhynchus           mykiss                     
#> 140        Cottus            gobio                     
#> 141        Barbus           barbus                     
#> 142     Barbatula        barbatula                     
#> 143      Squalius         cephalus                     
#> 144      Anguilla         anguilla                     
#> 145        Barbus           barbus                     
#> 146          Esox           lucius                     
#> 147         Salmo           trutta                fario
#> 148     Thymallus        thymallus                     
#> 149     Leuciscus        leuciscus                     
#> 150  Oncorhynchus           mykiss                     
#> 151      Squalius         cephalus                     
#> 152        Cottus            gobio                     
#> 153      Anguilla         anguilla                     
#> 154         Salmo           trutta                fario
#> 155      Anguilla         anguilla                     
#> 156        Barbus           barbus                     
#> 157      Squalius         cephalus                     
#> 158     Leuciscus        leuciscus                     
#> 159         Salmo           trutta                fario
#> 160      Anguilla         anguilla                     
#> 161        Barbus           barbus                     
#> 162      Squalius         cephalus                     
#> 163     Leuciscus        leuciscus                     
#> 164         Salmo           trutta                fario
#> 165      Squalius         cephalus                     
#> 166      Squalius         cephalus                     
#> 167         Salmo           trutta                fario
#> 168      Anguilla         anguilla                     
#> 169      Alburnus         alburnus                     
#> 170      Anguilla         anguilla                     
#> 171        Barbus           barbus                     
#> 172        Cottus            gobio                     
#> 173      Squalius         cephalus                     
#> 174      Phoxinus         phoxinus                     
#> 175       Rutilus          rutilus                     
#> 176         Salmo           trutta                fario
#> 177        Barbus           barbus                     
#> 178     Thymallus        thymallus                     
#> 179          Esox           lucius                     
#> 180      Anguilla         anguilla                     
#> 181         Salmo           trutta                fario
#> 182      Anguilla         anguilla                     
#> 183        Barbus           barbus                     
#> 184      Squalius         cephalus                     
#> 185       Rutilus          rutilus                     
#> 186         Salmo           trutta                fario
#> 187         Salmo           trutta                fario
#> 188  Oncorhynchus           mykiss                     
#> 189         Salmo           trutta                fario
#> 190     Thymallus        thymallus                     
#> 191  Oncorhynchus           mykiss                     
#> 192         Salmo           trutta                fario
#> 193     Barbatula        barbatula                     
#> 194        Cottus            gobio                     
#> 195        Cottus            gobio                     
#> 196  Oncorhynchus           mykiss                     
#> 197         Salmo           trutta                fario
#> 198         Salmo           trutta            lacustris
#> 199    Salvelinus       fontinalis                     
#> 200     Thymallus        thymallus                     
#> 201     Carassius        carassius                     
#> 202         Salmo           trutta                fario
#> 203       Rutilus          rutilus                     
#> 204 Pseudorasbora            parva                     
#> 205      Phoxinus         phoxinus                     
#> 206      Squalius         cephalus                     
#> 207  Chondrostoma            nasus                     
#> 208        Barbus           barbus                     
#> 209     Barbatula        barbatula                     
#> 210   Alburnoides      bipunctatus                     
#> 211         Gobio            gobio                     
#> 212         Gobio            gobio                     
#> 213      Anguilla         anguilla                     
#> 214         Salmo           trutta                fario
#> 215      Phoxinus         phoxinus                     
#> 216  Oncorhynchus           mykiss                     
#> 217      Squalius         cephalus                     
#> 218        Cottus            gobio                     
#> 219  Chondrostoma            nasus                     
#> 220   Alburnoides      bipunctatus                     
#> 221     Barbatula        barbatula                     
#> 222        Barbus           barbus                     
#> 223      Cyprinus           carpio                     
#> 224         Salmo           trutta                fario
#> 225         Salmo           trutta                fario
#> 226  Oncorhynchus           mykiss                     
#> 227  Oncorhynchus           mykiss                     
#> 228         Salmo           trutta                fario
#> 229  Oncorhynchus           mykiss                     
#> 230         Salmo           trutta                fario
#> 231          Lota             lota                     
#> 232      Squalius         cephalus                     
#> 233         Salmo           trutta                fario
#> 234         Perca      fluviatilis                     
#> 235     Leuciscus        leuciscus                     
#> 236         Gobio            gobio                     
#> 237       Abramis            brama                     
#> 238          Esox           lucius                     
#> 239       Rutilus          rutilus                     
#> 240      Alburnus         alburnus                     
#> 241 Gymnocephalus           cernua                     
#> 242         Perca      fluviatilis                     
#> 243       Rutilus          rutilus                     
#> 244     Leuciscus        leuciscus                     
#> 245      Squalius         cephalus                     
#> 246         Gobio            gobio                     
#> 247          Esox           lucius                     
#> 248       Abramis            brama                     
#> 249     Barbatula        barbatula                     
#> 250         Tinca            tinca                     
#> 251 Gymnocephalus           cernua                     
#> 252         Gobio            gobio                     
#> 253       Rutilus          rutilus                     
#> 254         Perca      fluviatilis                     
#> 255 Gymnocephalus           cernua                     
#> 256          Esox           lucius                     
#> 257      Alburnus         alburnus                     
#> 258      Squalius         cephalus                     
#> 259      Squalius         cephalus                     
#> 260      Alburnus         alburnus                     
#> 261         Perca      fluviatilis                     
#> 262       Rutilus          rutilus                     
#> 263     Leuciscus        leuciscus                     
#> 264         Gobio            gobio                     
#> 265     Carassius          gibelio                     
#> 266          Esox           lucius                     
#> 267 Gymnocephalus           cernua                     
#> 268         Perca      fluviatilis                     
#> 269         Tinca            tinca                     
#> 270    Scardinius erythrophthalmus                     
#> 271       Rutilus          rutilus                     
#> 272     Leuciscus        leuciscus                     
#> 273      Squalius         cephalus                     
#> 274         Gobio            gobio                     
#> 275          Esox           lucius                     
#> 276     Barbatula        barbatula                     
#> 277         Salmo           trutta                fario
#> 278          Esox           lucius                     
#> 279         Gobio            gobio                     
#> 280     Leuciscus        leuciscus                     
#> 281         Perca      fluviatilis                     
#> 282       Rutilus          rutilus                     
#> 283         Perca      fluviatilis                     
#> 284     Leuciscus        leuciscus                     
#> 285      Squalius         cephalus                     
#> 286         Gobio            gobio                     
#> 287          Esox           lucius                     
#> 288       Rutilus          rutilus                     
#> 289          Esox           lucius                     
#> 290         Gobio            gobio                     
#> 291      Squalius         cephalus                     
#> 292     Leuciscus        leuciscus                     
#> 293         Perca      fluviatilis                     
#> 294       Rutilus          rutilus                     
#> 295         Tinca            tinca                     
#> 296      Squalius         cephalus                     
#> 297         Salmo           trutta                fario
#> 298         Perca      fluviatilis                     
#> 299         Gobio            gobio                     
#> 300       Rutilus          rutilus                     
#>      scientificNameAuthorship taxonRank decimalLatitude decimalLongitude
#> 1              Linnaeus, 1758   species        47.99260         13.59860
#> 2               Walbaum, 1792   species        47.99260         13.59860
#> 3              Linnaeus, 1758   species        47.99260         13.59860
#> 4              Linnaeus, 1758   species        47.99260         13.59860
#> 5              Linnaeus, 1758   species        47.99260         13.59860
#> 6              Linnaeus, 1758   species        47.99260         13.59860
#> 7              Linnaeus, 1758   species        47.99250         13.53222
#> 8               Walbaum, 1792   species        47.99250         13.53222
#> 9              Linnaeus, 1758   species        47.99250         13.53222
#> 10             Linnaeus, 1758   species        47.99250         13.53222
#> 11              Walbaum, 1792   species        47.96333         13.50778
#> 12             Linnaeus, 1758   species        47.96333         13.50778
#> 13             Linnaeus, 1758   species        47.96333         13.50778
#> 14              Walbaum, 1792   species        47.96194         13.50861
#> 15             Linnaeus, 1758   species        47.96194         13.50861
#> 16             Linnaeus, 1758   species        47.96194         13.50861
#> 17             Linnaeus, 1758   species        47.96194         13.50861
#> 18             Linnaeus, 1758   species        47.91583         13.45972
#> 19              Walbaum, 1792   species        47.91583         13.45972
#> 20             Linnaeus, 1758   species        47.91583         13.45972
#> 21             Linnaeus, 1758   species        48.08611         13.84750
#> 22             Linnaeus, 1758   species        48.08611         13.84750
#> 23             Linnaeus, 1758   species        48.08611         13.84750
#> 24             Linnaeus, 1758   species        48.08611         13.84750
#> 25             Linnaeus, 1758   species        48.08611         13.84750
#> 26             Linnaeus, 1758   species        48.08611         13.84750
#> 27             Linnaeus, 1758   species        48.08611         13.84750
#> 28              Walbaum, 1792   species        48.08611         13.84750
#> 29             Linnaeus, 1758   species        48.08611         13.84861
#> 30             Linnaeus, 1758   species        48.08611         13.84861
#> 31             Linnaeus, 1758   species        48.08611         13.84861
#> 32             Linnaeus, 1758   species        48.08611         13.84861
#> 33             Linnaeus, 1758   species        48.08611         13.84861
#> 34             Linnaeus, 1758   species        48.08611         13.84861
#> 35             Linnaeus, 1758   species        48.08611         13.84861
#> 36             Linnaeus, 1758   species        48.08611         13.84861
#> 37             Linnaeus, 1758   species        48.08611         13.84861
#> 38              Walbaum, 1792   species        48.08611         13.84861
#> 39             Linnaeus, 1758   species        48.08611         13.84861
#> 40             Linnaeus, 1758   species        48.08611         13.84861
#> 41             Linnaeus, 1758   species        48.08611         13.84861
#> 42             Linnaeus, 1758   species        48.08611         13.84861
#> 43             Linnaeus, 1758   species        48.08611         13.84861
#> 44             Linnaeus, 1758   species        48.08611         13.84861
#> 45             Linnaeus, 1758   species        48.08611         13.84861
#> 46             Linnaeus, 1758   species        48.08611         13.84861
#> 47              Walbaum, 1792   species        48.08611         13.84861
#> 48             Linnaeus, 1758   species        48.08611         13.84861
#> 49             Linnaeus, 1758   species        48.08611         13.84861
#> 50             Linnaeus, 1758   species        48.08611         13.84861
#> 51              Walbaum, 1792   species        48.08611         13.84861
#> 52             Linnaeus, 1758   species        48.08611         13.84861
#> 53             Linnaeus, 1758   species        48.08611         13.84861
#> 54             Linnaeus, 1758   species        48.08611         13.84861
#> 55             Linnaeus, 1758   species        48.08611         13.84861
#> 56             Linnaeus, 1758   species        48.08611         13.84861
#> 57             Linnaeus, 1758   species        48.08611         13.84861
#> 58             Linnaeus, 1758   species        48.06639         13.80722
#> 59             Linnaeus, 1758   species        48.06639         13.80722
#> 60             Linnaeus, 1758   species        48.06639         13.80722
#> 61              Walbaum, 1792   species        48.06639         13.80722
#> 62             Linnaeus, 1758   species        48.06639         13.80722
#> 63             Linnaeus, 1758   species        48.06639         13.80722
#> 64             Linnaeus, 1758   species        48.06639         13.80722
#> 65             Linnaeus, 1758   species        48.06639         13.80722
#> 66             Linnaeus, 1758   species        48.06639         13.80722
#> 67             Linnaeus, 1758   species        48.06639         13.80722
#> 68             Linnaeus, 1758   species        48.06639         13.80722
#> 69             Linnaeus, 1758   species        48.06639         13.80722
#> 70             Linnaeus, 1758   species        48.06639         13.80722
#> 71              Walbaum, 1792   species        48.06639         13.80722
#> 72             Linnaeus, 1758   species        48.06639         13.80722
#> 73             Linnaeus, 1758   species        48.05528         13.79389
#> 74             Linnaeus, 1758   species        48.05528         13.79389
#> 75              Walbaum, 1792   species        48.05528         13.79389
#> 76             Linnaeus, 1758   species        48.05528         13.79389
#> 77             Linnaeus, 1758   species        48.05528         13.79389
#> 78             Linnaeus, 1758   species        48.05528         13.79389
#> 79             Linnaeus, 1758   species        48.05528         13.79389
#> 80             Linnaeus, 1758   species        48.05528         13.79389
#> 81              Walbaum, 1792   species        48.05528         13.79389
#> 82             Linnaeus, 1758   species        48.05528         13.79389
#> 83             Linnaeus, 1758   species        48.05528         13.79389
#> 84             Linnaeus, 1758   species        48.05528         13.79389
#> 85             Linnaeus, 1758   species        48.05528         13.79389
#> 86             Linnaeus, 1758   species        48.05528         13.79389
#> 87             Linnaeus, 1758   species        48.05528         13.79389
#> 88             Linnaeus, 1758   species        48.05528         13.79389
#> 89              Walbaum, 1792   species        48.01306         13.75111
#> 90             Linnaeus, 1758   species        48.01306         13.75111
#> 91             Linnaeus, 1758   species        48.01306         13.75111
#> 92             Linnaeus, 1758   species        48.01306         13.75111
#> 93             Linnaeus, 1758   species        48.01306         13.75111
#> 94             Linnaeus, 1758   species        48.01306         13.75111
#> 95             Linnaeus, 1758   species        48.01306         13.75111
#> 96             Linnaeus, 1758   species        48.01306         13.75111
#> 97             Linnaeus, 1758   species        48.01306         13.75111
#> 98             Linnaeus, 1758   species        47.99306         13.71417
#> 99             Linnaeus, 1758   species        47.99306         13.71417
#> 100             Walbaum, 1792   species        47.99306         13.71417
#> 101            Linnaeus, 1758   species        47.99306         13.71417
#> 102            Linnaeus, 1758   species        47.99306         13.71417
#> 103            Linnaeus, 1758   species        47.99306         13.71417
#> 104            Linnaeus, 1758   species        47.99306         13.71417
#> 105            Linnaeus, 1758   species        47.99583         13.70556
#> 106            Linnaeus, 1758   species        47.99583         13.70556
#> 107             Walbaum, 1792   species        47.99583         13.70556
#> 108            Linnaeus, 1758   species        47.99583         13.70556
#> 109            Linnaeus, 1758   species        47.99583         13.70556
#> 110            Linnaeus, 1758   species        47.99583         13.70556
#> 111            Linnaeus, 1758   species        47.99583         13.70556
#> 112            Linnaeus, 1758   species        47.99472         13.69111
#> 113             Walbaum, 1792   species        47.99472         13.69111
#> 114            Linnaeus, 1758   species        47.99472         13.69111
#> 115            Linnaeus, 1758   species        47.99472         13.69111
#> 116            Linnaeus, 1758   species        47.99472         13.69111
#> 117            Linnaeus, 1758   species        47.99472         13.69111
#> 118            Linnaeus, 1758   species        47.99472         13.69111
#> 119            Linnaeus, 1758   species        47.99472         13.69111
#> 120            Linnaeus, 1758   species        47.99444         13.69111
#> 121            Linnaeus, 1758   species        47.99444         13.69111
#> 122             Walbaum, 1792   species        47.99444         13.69111
#> 123            Linnaeus, 1758   species        47.99444         13.69111
#> 124            Linnaeus, 1758   species        47.99444         13.69111
#> 125            Linnaeus, 1758   species        47.99444         13.69111
#> 126            Linnaeus, 1758   species        47.99444         13.69111
#> 127            Linnaeus, 1758   species        47.99444         13.69111
#> 128             Walbaum, 1792   species        47.99861         13.68500
#> 129            Linnaeus, 1758   species        47.99861         13.68500
#> 130            Linnaeus, 1758   species        47.99861         13.68500
#> 131            Linnaeus, 1758   species        47.99861         13.68500
#> 132            Linnaeus, 1758   species        47.99861         13.68500
#> 133            Linnaeus, 1758   species        47.99861         13.68500
#> 134            Linnaeus, 1758   species        47.99861         13.68500
#> 135            Linnaeus, 1758   species        47.99861         13.68500
#> 136            Linnaeus, 1758   species        47.99861         13.68500
#> 137            Linnaeus, 1758   species        48.00083         13.67889
#> 138            Linnaeus, 1758   species        48.00083         13.67889
#> 139             Walbaum, 1792   species        48.00083         13.67889
#> 140            Linnaeus, 1758   species        48.00083         13.67889
#> 141            Linnaeus, 1758   species        48.00083         13.67889
#> 142            Linnaeus, 1758   species        48.00083         13.67889
#> 143            Linnaeus, 1758   species        48.00083         13.67889
#> 144            Linnaeus, 1758   species        48.00111         13.67167
#> 145            Linnaeus, 1758   species        48.00111         13.67167
#> 146            Linnaeus, 1758   species        48.00111         13.67167
#> 147            Linnaeus, 1758   species        48.00111         13.67167
#> 148            Linnaeus, 1758   species        48.00111         13.67167
#> 149            Linnaeus, 1758   species        47.99222         13.64722
#> 150             Walbaum, 1792   species        47.99222         13.64722
#> 151            Linnaeus, 1758   species        47.99222         13.64722
#> 152            Linnaeus, 1758   species        47.99222         13.64722
#> 153            Linnaeus, 1758   species        47.99222         13.64722
#> 154            Linnaeus, 1758   species        47.99222         13.64722
#> 155            Linnaeus, 1758   species        47.99222         13.64722
#> 156            Linnaeus, 1758   species        47.99222         13.64722
#> 157            Linnaeus, 1758   species        47.99222         13.64722
#> 158            Linnaeus, 1758   species        47.99222         13.64722
#> 159            Linnaeus, 1758   species        47.99222         13.64722
#> 160            Linnaeus, 1758   species        47.99306         13.64083
#> 161            Linnaeus, 1758   species        47.99306         13.64083
#> 162            Linnaeus, 1758   species        47.99306         13.64083
#> 163            Linnaeus, 1758   species        47.99306         13.64083
#> 164            Linnaeus, 1758   species        47.99306         13.64083
#> 165            Linnaeus, 1758   species        47.99472         13.63611
#> 166            Linnaeus, 1758   species        47.99472         13.63611
#> 167            Linnaeus, 1758   species        47.97167         13.61056
#> 168            Linnaeus, 1758   species        47.97167         13.61056
#> 169            Linnaeus, 1758   species        47.97167         13.61056
#> 170            Linnaeus, 1758   species        47.97167         13.61056
#> 171            Linnaeus, 1758   species        47.97167         13.61056
#> 172            Linnaeus, 1758   species        47.97167         13.61056
#> 173            Linnaeus, 1758   species        47.97167         13.61056
#> 174            Linnaeus, 1758   species        47.97167         13.61056
#> 175            Linnaeus, 1758   species        47.97167         13.61056
#> 176            Linnaeus, 1758   species        47.97167         13.61056
#> 177            Linnaeus, 1758   species        47.97167         13.61056
#> 178            Linnaeus, 1758   species        47.97167         13.61056
#> 179            Linnaeus, 1758   species        47.97167         13.61056
#> 180            Linnaeus, 1758   species        47.97167         13.61056
#> 181            Linnaeus, 1758   species        47.97167         13.61056
#> 182            Linnaeus, 1758   species        47.96389         13.60889
#> 183            Linnaeus, 1758   species        47.96389         13.60889
#> 184            Linnaeus, 1758   species        47.96389         13.60889
#> 185            Linnaeus, 1758   species        47.96389         13.60889
#> 186            Linnaeus, 1758   species        47.96389         13.60889
#> 187            Linnaeus, 1758   species        47.13139         10.08222
#> 188             Walbaum, 1792   species        48.08444         13.91472
#> 189            Linnaeus, 1758   species        48.08444         13.91472
#> 190            Linnaeus, 1758   species        48.08444         13.91472
#> 191             Walbaum, 1792   species        48.08139         13.91250
#> 192            Linnaeus, 1758   species        48.08139         13.91250
#> 193            Linnaeus, 1758   species        48.08139         13.91250
#> 194            Linnaeus, 1758   species        48.08139         13.91250
#> 195            Linnaeus, 1758   species        47.87270         13.94310
#> 196             Walbaum, 1792   species        47.87270         13.94310
#> 197            Linnaeus, 1758   species        47.87270         13.94310
#> 198            Linnaeus, 1758   species        47.87270         13.94310
#> 199            Mitchill, 1814   species        47.87270         13.94310
#> 200            Linnaeus, 1758   species        47.87270         13.94310
#> 201            Linnaeus, 1758   species        48.34320         13.40630
#> 202            Linnaeus, 1758   species        48.34320         13.40630
#> 203            Linnaeus, 1758   species        48.34320         13.40630
#> 204 Temminck & Schlegel, 1846   species        48.34320         13.40630
#> 205            Linnaeus, 1758   species        48.34320         13.40630
#> 206            Linnaeus, 1758   species        48.34320         13.40630
#> 207            Linnaeus, 1758   species        48.34320         13.40630
#> 208            Linnaeus, 1758   species        48.34320         13.40630
#> 209            Linnaeus, 1758   species        48.34320         13.40630
#> 210               Bloch, 1782   species        48.34320         13.40630
#> 211            Linnaeus, 1758   species        48.34320         13.40630
#> 212            Linnaeus, 1758   species        48.33880         13.40950
#> 213            Linnaeus, 1758   species        48.33880         13.40950
#> 214            Linnaeus, 1758   species        48.33880         13.40950
#> 215            Linnaeus, 1758   species        48.33880         13.40950
#> 216             Walbaum, 1792   species        48.33880         13.40950
#> 217            Linnaeus, 1758   species        48.33880         13.40950
#> 218            Linnaeus, 1758   species        48.33880         13.40950
#> 219            Linnaeus, 1758   species        48.33880         13.40950
#> 220               Bloch, 1782   species        48.33880         13.40950
#> 221            Linnaeus, 1758   species        48.33880         13.40950
#> 222            Linnaeus, 1758   species        48.33880         13.40950
#> 223            Linnaeus, 1758   species        48.33880         13.40950
#> 224            Linnaeus, 1758   species        46.64167         14.89556
#> 225            Linnaeus, 1758   species        46.79167         13.73194
#> 226             Walbaum, 1792   species        46.79167         13.73194
#> 227             Walbaum, 1792   species        47.47750         13.13278
#> 228            Linnaeus, 1758   species        47.47750         13.13278
#> 229             Walbaum, 1792   species        47.47639         13.12528
#> 230            Linnaeus, 1758   species        47.47639         13.12528
#> 231            Linnaeus, 1758   species        48.77252         15.00623
#> 232            Linnaeus, 1758   species        48.77252         15.00623
#> 233            Linnaeus, 1758   species        48.77252         15.00623
#> 234            Linnaeus, 1758   species        48.77252         15.00623
#> 235            Linnaeus, 1758   species        48.77252         15.00623
#> 236            Linnaeus, 1758   species        48.77252         15.00623
#> 237            Linnaeus, 1758   species        48.77252         15.00623
#> 238            Linnaeus, 1758   species        48.77252         15.00623
#> 239            Linnaeus, 1758   species        48.77252         15.00623
#> 240            Linnaeus, 1758   species        48.77252         15.00623
#> 241            Linnaeus, 1758   species        48.77252         15.00623
#> 242            Linnaeus, 1758   species        48.77495         15.01708
#> 243            Linnaeus, 1758   species        48.77495         15.01708
#> 244            Linnaeus, 1758   species        48.77495         15.01708
#> 245            Linnaeus, 1758   species        48.77495         15.01708
#> 246            Linnaeus, 1758   species        48.77495         15.01708
#> 247            Linnaeus, 1758   species        48.77495         15.01708
#> 248            Linnaeus, 1758   species        48.77495         15.01708
#> 249            Linnaeus, 1758   species        48.77495         15.01708
#> 250            Linnaeus, 1758   species        48.77495         15.01708
#> 251            Linnaeus, 1758   species        48.77495         15.01708
#> 252            Linnaeus, 1758   species        48.77595         15.03270
#> 253            Linnaeus, 1758   species        48.77595         15.03270
#> 254            Linnaeus, 1758   species        48.77595         15.03270
#> 255            Linnaeus, 1758   species        48.77595         15.03270
#> 256            Linnaeus, 1758   species        48.77595         15.03270
#> 257            Linnaeus, 1758   species        48.77595         15.03270
#> 258            Linnaeus, 1758   species        48.77595         15.03270
#> 259            Linnaeus, 1758   species        48.78108         15.04583
#> 260            Linnaeus, 1758   species        48.78108         15.04583
#> 261            Linnaeus, 1758   species        48.78108         15.04583
#> 262            Linnaeus, 1758   species        48.78108         15.04583
#> 263            Linnaeus, 1758   species        48.78108         15.04583
#> 264            Linnaeus, 1758   species        48.78108         15.04583
#> 265               Bloch, 1782   species        48.78108         15.04583
#> 266            Linnaeus, 1758   species        48.78108         15.04583
#> 267            Linnaeus, 1758   species        48.78108         15.04583
#> 268            Linnaeus, 1758   species        48.79173         15.06345
#> 269            Linnaeus, 1758   species        48.79173         15.06345
#> 270            Linnaeus, 1758   species        48.79173         15.06345
#> 271            Linnaeus, 1758   species        48.79173         15.06345
#> 272            Linnaeus, 1758   species        48.79173         15.06345
#> 273            Linnaeus, 1758   species        48.79173         15.06345
#> 274            Linnaeus, 1758   species        48.79173         15.06345
#> 275            Linnaeus, 1758   species        48.79173         15.06345
#> 276            Linnaeus, 1758   species        48.79173         15.06345
#> 277            Linnaeus, 1758   species        48.79173         15.06345
#> 278            Linnaeus, 1758   species        48.80202         15.06072
#> 279            Linnaeus, 1758   species        48.80202         15.06072
#> 280            Linnaeus, 1758   species        48.80202         15.06072
#> 281            Linnaeus, 1758   species        48.80202         15.06072
#> 282            Linnaeus, 1758   species        48.80202         15.06072
#> 283            Linnaeus, 1758   species        48.81142         15.05217
#> 284            Linnaeus, 1758   species        48.81142         15.05217
#> 285            Linnaeus, 1758   species        48.81142         15.05217
#> 286            Linnaeus, 1758   species        48.81142         15.05217
#> 287            Linnaeus, 1758   species        48.81142         15.05217
#> 288            Linnaeus, 1758   species        48.81142         15.05217
#> 289            Linnaeus, 1758   species        48.82435         15.04939
#> 290            Linnaeus, 1758   species        48.82435         15.04939
#> 291            Linnaeus, 1758   species        48.82435         15.04939
#> 292            Linnaeus, 1758   species        48.82435         15.04939
#> 293            Linnaeus, 1758   species        48.82435         15.04939
#> 294            Linnaeus, 1758   species        48.82435         15.04939
#> 295            Linnaeus, 1758   species        48.82435         15.04939
#> 296            Linnaeus, 1758   species        48.83465         15.04912
#> 297            Linnaeus, 1758   species        48.83465         15.04912
#> 298            Linnaeus, 1758   species        48.83465         15.04912
#> 299            Linnaeus, 1758   species        48.83465         15.04912
#> 300            Linnaeus, 1758   species        48.83465         15.04912
#>     geodeticDatum coordinatePrecision                     locality       Date
#> 1           WGS84               1e-05       ca.1,8kmoh.Einmuendung 26/07/1995
#> 2           WGS84               1e-05       ca.1,8kmoh.Einmuendung 26/07/1995
#> 3           WGS84               1e-05       ca.1,8kmoh.Einmuendung 26/07/1995
#> 4           WGS84               1e-05       ca.1,8kmoh.Einmuendung 26/07/1995
#> 5           WGS84               1e-05       ca.1,8kmoh.Einmuendung 26/07/1995
#> 6           WGS84               1e-05       ca.1,8kmoh.Einmuendung 26/07/1995
#> 7           WGS84               1e-05       bridgenearEgning(500m) 20/10/1994
#> 8           WGS84               1e-05       bridgenearEgning(500m) 20/10/1994
#> 9           WGS84               1e-05       bridgenearEgning(500m) 20/10/1994
#> 10          WGS84               1e-05       bridgenearEgning(500m) 20/10/1994
#> 11          WGS84               1e-05                 nearAumuehle 25/04/1992
#> 12          WGS84               1e-05                 nearAumuehle 25/04/1992
#> 13          WGS84               1e-05                 nearAumuehle 25/04/1992
#> 14          WGS84               1e-05 bridgeupstreamAumuehle(510m) 20/10/1994
#> 15          WGS84               1e-05 bridgeupstreamAumuehle(510m) 20/10/1994
#> 16          WGS84               1e-05 bridgeupstreamAumuehle(510m) 20/10/1994
#> 17          WGS84               1e-05 bridgeupstreamAumuehle(510m) 20/10/1994
#> 18          WGS84               1e-05   bridge(A1)nearStrass(520m) 20/10/1994
#> 19          WGS84               1e-05   bridge(A1)nearStrass(520m) 20/10/1994
#> 20          WGS84               1e-05   bridge(A1)nearStrass(520m) 20/10/1994
#> 21          WGS84               1e-05                    Fischerau 15/11/1994
#> 22          WGS84               1e-05                    Fischerau 15/11/1994
#> 23          WGS84               1e-05                    Fischerau 15/11/1994
#> 24          WGS84               1e-05                    Fischerau 15/11/1994
#> 25          WGS84               1e-05                    Fischerau 15/11/1994
#> 26          WGS84               1e-05                    Fischerau 15/11/1994
#> 27          WGS84               1e-05                    Fischerau 15/11/1994
#> 28          WGS84               1e-05                    Fischerau 15/11/1994
#> 29          WGS84               1e-05                nearFischerau 15/12/1990
#> 30          WGS84               1e-05                nearFischerau 15/12/1990
#> 31          WGS84               1e-05                nearFischerau 15/12/1990
#> 32          WGS84               1e-05                nearFischerau 15/12/1990
#> 33          WGS84               1e-05                nearFischerau 15/12/1990
#> 34          WGS84               1e-05                nearFischerau 15/12/1990
#> 35          WGS84               1e-05                nearFischerau 15/12/1990
#> 36          WGS84               1e-05                nearFischerau 15/12/1990
#> 37          WGS84               1e-05                nearFischerau 15/12/1990
#> 38          WGS84               1e-05                nearFischerau 15/12/1990
#> 39          WGS84               1e-05                nearFischerau 15/10/1991
#> 40          WGS84               1e-05                nearFischerau 15/10/1991
#> 41          WGS84               1e-05                nearFischerau 15/10/1991
#> 42          WGS84               1e-05                nearFischerau 15/10/1991
#> 43          WGS84               1e-05                nearFischerau 15/10/1991
#> 44          WGS84               1e-05                nearFischerau 15/10/1991
#> 45          WGS84               1e-05                nearFischerau 15/10/1991
#> 46          WGS84               1e-05                nearFischerau 15/10/1991
#> 47          WGS84               1e-05                nearFischerau 15/10/1991
#> 48          WGS84               1e-05                nearFischerau 15/10/1991
#> 49          WGS84               1e-05                nearFischerau 15/02/1993
#> 50          WGS84               1e-05                nearFischerau 15/02/1993
#> 51          WGS84               1e-05                nearFischerau 15/02/1993
#> 52          WGS84               1e-05                nearFischerau 15/02/1993
#> 53          WGS84               1e-05                nearFischerau 15/02/1993
#> 54          WGS84               1e-05                nearFischerau 15/02/1993
#> 55          WGS84               1e-05                nearFischerau 15/02/1993
#> 56          WGS84               1e-05                nearFischerau 15/02/1993
#> 57          WGS84               1e-05                nearFischerau 15/02/1993
#> 58          WGS84               1e-05                     Glatzing 15/10/1991
#> 59          WGS84               1e-05                     Glatzing 15/10/1991
#> 60          WGS84               1e-05                     Glatzing 15/10/1991
#> 61          WGS84               1e-05                     Glatzing 15/10/1991
#> 62          WGS84               1e-05                     Glatzing 15/10/1991
#> 63          WGS84               1e-05                     Glatzing 15/10/1991
#> 64          WGS84               1e-05                     Glatzing 15/10/1991
#> 65          WGS84               1e-05                     Glatzing 15/10/1991
#> 66          WGS84               1e-05                     Glatzing 15/10/1991
#> 67          WGS84               1e-05                     Glatzing 15/10/1991
#> 68          WGS84               1e-05                     Glatzing 15/10/1991
#> 69          WGS84               1e-05                     Glatzing 15/10/1991
#> 70          WGS84               1e-05                     Glatzing 15/10/1991
#> 71          WGS84               1e-05                     Glatzing 15/10/1991
#> 72          WGS84               1e-05                     Glatzing 15/10/1991
#> 73          WGS84               1e-05      upstreambridgenearStaig 15/02/1993
#> 74          WGS84               1e-05      upstreambridgenearStaig 15/02/1993
#> 75          WGS84               1e-05      upstreambridgenearStaig 15/02/1993
#> 76          WGS84               1e-05      upstreambridgenearStaig 15/02/1993
#> 77          WGS84               1e-05      upstreambridgenearStaig 15/02/1993
#> 78          WGS84               1e-05      upstreambridgenearStaig 15/02/1993
#> 79          WGS84               1e-05      upstreambridgenearStaig 15/02/1993
#> 80          WGS84               1e-05      upstreambridgenearStaig 15/02/1993
#> 81          WGS84               1e-05      upstreambridgenearStaig 15/11/1994
#> 82          WGS84               1e-05      upstreambridgenearStaig 15/11/1994
#> 83          WGS84               1e-05      upstreambridgenearStaig 15/11/1994
#> 84          WGS84               1e-05      upstreambridgenearStaig 15/11/1994
#> 85          WGS84               1e-05      upstreambridgenearStaig 15/11/1994
#> 86          WGS84               1e-05      upstreambridgenearStaig 15/11/1994
#> 87          WGS84               1e-05      upstreambridgenearStaig 15/11/1994
#> 88          WGS84               1e-05      upstreambridgenearStaig 15/11/1994
#> 89          WGS84               1e-05  upstreambridgenearDeutenham 15/11/1994
#> 90          WGS84               1e-05  upstreambridgenearDeutenham 15/11/1994
#> 91          WGS84               1e-05  upstreambridgenearDeutenham 15/11/1994
#> 92          WGS84               1e-05  upstreambridgenearDeutenham 15/11/1994
#> 93          WGS84               1e-05  upstreambridgenearDeutenham 15/11/1994
#> 94          WGS84               1e-05  upstreambridgenearDeutenham 15/11/1994
#> 95          WGS84               1e-05  upstreambridgenearDeutenham 15/11/1994
#> 96          WGS84               1e-05  upstreambridgenearDeutenham 15/11/1994
#> 97          WGS84               1e-05  upstreambridgenearDeutenham 15/11/1994
#> 98          WGS84               1e-05                 nearPuchheim 15/11/1994
#> 99          WGS84               1e-05                 nearPuchheim 15/11/1994
#> 100         WGS84               1e-05                 nearPuchheim 15/11/1994
#> 101         WGS84               1e-05                 nearPuchheim 15/11/1994
#> 102         WGS84               1e-05                 nearPuchheim 15/11/1994
#> 103         WGS84               1e-05                 nearPuchheim 15/11/1994
#> 104         WGS84               1e-05                 nearPuchheim 15/11/1994
#> 105         WGS84               1e-05             upstreamPuchheim 15/12/1990
#> 106         WGS84               1e-05             upstreamPuchheim 15/12/1990
#> 107         WGS84               1e-05             upstreamPuchheim 15/12/1990
#> 108         WGS84               1e-05             upstreamPuchheim 15/12/1990
#> 109         WGS84               1e-05             upstreamPuchheim 15/12/1990
#> 110         WGS84               1e-05             upstreamPuchheim 15/12/1990
#> 111         WGS84               1e-05             upstreamPuchheim 15/12/1990
#> 112         WGS84               1e-05                    nearRegau 15/11/1994
#> 113         WGS84               1e-05                    nearRegau 15/11/1994
#> 114         WGS84               1e-05                    nearRegau 15/11/1994
#> 115         WGS84               1e-05                    nearRegau 15/11/1994
#> 116         WGS84               1e-05                    nearRegau 15/11/1994
#> 117         WGS84               1e-05                    nearRegau 15/11/1994
#> 118         WGS84               1e-05                    nearRegau 15/11/1994
#> 119         WGS84               1e-05                    nearRegau 15/11/1994
#> 120         WGS84               1e-05                    nearRegau 15/11/1994
#> 121         WGS84               1e-05                    nearRegau 15/11/1994
#> 122         WGS84               1e-05                    nearRegau 15/11/1994
#> 123         WGS84               1e-05                    nearRegau 15/11/1994
#> 124         WGS84               1e-05                    nearRegau 15/11/1994
#> 125         WGS84               1e-05                    nearRegau 15/11/1994
#> 126         WGS84               1e-05                    nearRegau 15/11/1994
#> 127         WGS84               1e-05                    nearRegau 15/11/1994
#> 128         WGS84               1e-05         bridgenearSchalchham 15/11/1994
#> 129         WGS84               1e-05         bridgenearSchalchham 15/11/1994
#> 130         WGS84               1e-05         bridgenearSchalchham 15/11/1994
#> 131         WGS84               1e-05         bridgenearSchalchham 15/11/1994
#> 132         WGS84               1e-05         bridgenearSchalchham 15/11/1994
#> 133         WGS84               1e-05         bridgenearSchalchham 15/11/1994
#> 134         WGS84               1e-05         bridgenearSchalchham 15/11/1994
#> 135         WGS84               1e-05         bridgenearSchalchham 15/11/1994
#> 136         WGS84               1e-05         bridgenearSchalchham 15/11/1994
#> 137         WGS84               1e-05                   Schalchham 15/11/1994
#> 138         WGS84               1e-05                   Schalchham 15/11/1994
#> 139         WGS84               1e-05                   Schalchham 15/11/1994
#> 140         WGS84               1e-05                   Schalchham 15/11/1994
#> 141         WGS84               1e-05                   Schalchham 15/11/1994
#> 142         WGS84               1e-05                   Schalchham 15/11/1994
#> 143         WGS84               1e-05                   Schalchham 15/11/1994
#> 144         WGS84               1e-05                 Voecklabruck 15/11/1994
#> 145         WGS84               1e-05                 Voecklabruck 15/11/1994
#> 146         WGS84               1e-05                 Voecklabruck 15/11/1994
#> 147         WGS84               1e-05                 Voecklabruck 15/11/1994
#> 148         WGS84               1e-05                 Voecklabruck 15/11/1994
#> 149         WGS84               1e-05                 Voecklabruck 15/10/1991
#> 150         WGS84               1e-05                 Voecklabruck 15/10/1991
#> 151         WGS84               1e-05                 Voecklabruck 15/10/1991
#> 152         WGS84               1e-05                 Voecklabruck 15/10/1991
#> 153         WGS84               1e-05                 Voecklabruck 15/10/1991
#> 154         WGS84               1e-05                 Voecklabruck 15/10/1991
#> 155         WGS84               1e-05                 Voecklabruck 15/11/1994
#> 156         WGS84               1e-05                 Voecklabruck 15/11/1994
#> 157         WGS84               1e-05                 Voecklabruck 15/11/1994
#> 158         WGS84               1e-05                 Voecklabruck 15/11/1994
#> 159         WGS84               1e-05                 Voecklabruck 15/11/1994
#> 160         WGS84               1e-05      DuernaunearVoecklabruck 15/11/1994
#> 161         WGS84               1e-05      DuernaunearVoecklabruck 15/11/1994
#> 162         WGS84               1e-05      DuernaunearVoecklabruck 15/11/1994
#> 163         WGS84               1e-05      DuernaunearVoecklabruck 15/11/1994
#> 164         WGS84               1e-05      DuernaunearVoecklabruck 15/11/1994
#> 165         WGS84               1e-05      DuernaunearVoecklabruck 15/02/1993
#> 166         WGS84               1e-05      DuernaunearVoecklabruck 15/02/1993
#> 167         WGS84               1e-05              upstreamLenzing 15/12/1990
#> 168         WGS84               1e-05              upstreamLenzing 15/12/1990
#> 169         WGS84               1e-05              upstreamLenzing 15/02/1993
#> 170         WGS84               1e-05              upstreamLenzing 15/02/1993
#> 171         WGS84               1e-05              upstreamLenzing 15/02/1993
#> 172         WGS84               1e-05              upstreamLenzing 15/02/1993
#> 173         WGS84               1e-05              upstreamLenzing 15/02/1993
#> 174         WGS84               1e-05              upstreamLenzing 15/02/1993
#> 175         WGS84               1e-05              upstreamLenzing 15/02/1993
#> 176         WGS84               1e-05              upstreamLenzing 15/02/1993
#> 177         WGS84               1e-05              upstreamLenzing 15/11/1994
#> 178         WGS84               1e-05              upstreamLenzing 15/11/1994
#> 179         WGS84               1e-05              upstreamLenzing 15/11/1994
#> 180         WGS84               1e-05              upstreamLenzing 15/11/1994
#> 181         WGS84               1e-05              upstreamLenzing 15/11/1994
#> 182         WGS84               1e-05                 Unterachmann 15/10/1991
#> 183         WGS84               1e-05                 Unterachmann 15/10/1991
#> 184         WGS84               1e-05                 Unterachmann 15/10/1991
#> 185         WGS84               1e-05                 Unterachmann 15/10/1991
#> 186         WGS84               1e-05                 Unterachmann 15/10/1991
#> 187         WGS84               1e-05                   Kloesterle 04/08/1999
#> 188         WGS84               1e-05       upstreammouthintoTraun 30/07/1985
#> 189         WGS84               1e-05       upstreammouthintoTraun 30/07/1985
#> 190         WGS84               1e-05       upstreammouthintoTraun 30/07/1985
#> 191         WGS84               1e-05       upstreammouthintoTraun 30/07/1985
#> 192         WGS84               1e-05       upstreammouthintoTraun 30/07/1985
#> 193         WGS84               1e-05       upstreammouthintoTraun 30/07/1985
#> 194         WGS84               1e-05       upstreammouthintoTraun 30/07/1985
#> 195         WGS84               1e-05              uh.Wieselmuehle 19/09/2002
#> 196         WGS84               1e-05              uh.Wieselmuehle 19/09/2002
#> 197         WGS84               1e-05              uh.Wieselmuehle 19/09/2002
#> 198         WGS84               1e-05              uh.Wieselmuehle 19/09/2002
#> 199         WGS84               1e-05              uh.Wieselmuehle 19/09/2002
#> 200         WGS84               1e-05              uh.Wieselmuehle 19/09/2002
#> 201         WGS84               1e-05 Stauwurzelbereich des OKA-KW 25/04/1995
#> 202         WGS84               1e-05 Stauwurzelbereich des OKA-KW 25/04/1995
#> 203         WGS84               1e-05 Stauwurzelbereich des OKA-KW 25/04/1995
#> 204         WGS84               1e-05 Stauwurzelbereich des OKA-KW 25/04/1995
#> 205         WGS84               1e-05 Stauwurzelbereich des OKA-KW 25/04/1995
#> 206         WGS84               1e-05 Stauwurzelbereich des OKA-KW 25/04/1995
#> 207         WGS84               1e-05 Stauwurzelbereich des OKA-KW 25/04/1995
#> 208         WGS84               1e-05 Stauwurzelbereich des OKA-KW 25/04/1995
#> 209         WGS84               1e-05 Stauwurzelbereich des OKA-KW 25/04/1995
#> 210         WGS84               1e-05 Stauwurzelbereich des OKA-KW 25/04/1995
#> 211         WGS84               1e-05 Stauwurzelbereich des OKA-KW 25/04/1995
#> 212         WGS84               1e-05       Antiesenhofen/Ortmaier 25/04/1995
#> 213         WGS84               1e-05       Antiesenhofen/Ortmaier 25/04/1995
#> 214         WGS84               1e-05       Antiesenhofen/Ortmaier 25/04/1995
#> 215         WGS84               1e-05       Antiesenhofen/Ortmaier 25/04/1995
#> 216         WGS84               1e-05       Antiesenhofen/Ortmaier 25/04/1995
#> 217         WGS84               1e-05       Antiesenhofen/Ortmaier 25/04/1995
#> 218         WGS84               1e-05       Antiesenhofen/Ortmaier 25/04/1995
#> 219         WGS84               1e-05       Antiesenhofen/Ortmaier 25/04/1995
#> 220         WGS84               1e-05       Antiesenhofen/Ortmaier 25/04/1995
#> 221         WGS84               1e-05       Antiesenhofen/Ortmaier 25/04/1995
#> 222         WGS84               1e-05       Antiesenhofen/Ortmaier 25/04/1995
#> 223         WGS84               1e-05       Antiesenhofen/Ortmaier 25/04/1995
#> 224         WGS84               1e-05                      Neuhaus 13/05/1981
#> 225         WGS84               1e-05                   Untertweng 27/12/1989
#> 226         WGS84               1e-05                   Untertweng 27/12/1989
#> 227         WGS84               1e-05   downstreamweirnearMaxlehen 17/02/1992
#> 228         WGS84               1e-05   downstreamweirnearMaxlehen 17/02/1992
#> 229         WGS84               1e-05 400mupstreamweirnearMaxlehen 02/03/1993
#> 230         WGS84               1e-05 400mupstreamweirnearMaxlehen 02/03/1993
#> 231         WGS84               1e-05            Backhausenkolonie 21/09/1999
#> 232         WGS84               1e-05            Backhausenkolonie 21/09/1999
#> 233         WGS84               1e-05            Backhausenkolonie 21/09/1999
#> 234         WGS84               1e-05            Backhausenkolonie 21/09/1999
#> 235         WGS84               1e-05            Backhausenkolonie 21/09/1999
#> 236         WGS84               1e-05            Backhausenkolonie 21/09/1999
#> 237         WGS84               1e-05            Backhausenkolonie 21/09/1999
#> 238         WGS84               1e-05            Backhausenkolonie 21/09/1999
#> 239         WGS84               1e-05            Backhausenkolonie 21/09/1999
#> 240         WGS84               1e-05            Backhausenkolonie 21/09/1999
#> 241         WGS84               1e-05            Backhausenkolonie 21/09/1999
#> 242         WGS84               1e-05                    Hoheneich 21/09/1999
#> 243         WGS84               1e-05                    Hoheneich 21/09/1999
#> 244         WGS84               1e-05                    Hoheneich 21/09/1999
#> 245         WGS84               1e-05                    Hoheneich 21/09/1999
#> 246         WGS84               1e-05                    Hoheneich 21/09/1999
#> 247         WGS84               1e-05                    Hoheneich 21/09/1999
#> 248         WGS84               1e-05                    Hoheneich 21/09/1999
#> 249         WGS84               1e-05                    Hoheneich 21/09/1999
#> 250         WGS84               1e-05                    Hoheneich 21/09/1999
#> 251         WGS84               1e-05                    Hoheneich 21/09/1999
#> 252         WGS84               1e-05                 Anderlfabrik 21/09/1999
#> 253         WGS84               1e-05                 Anderlfabrik 21/09/1999
#> 254         WGS84               1e-05                 Anderlfabrik 21/09/1999
#> 255         WGS84               1e-05                 Anderlfabrik 21/09/1999
#> 256         WGS84               1e-05                 Anderlfabrik 21/09/1999
#> 257         WGS84               1e-05                 Anderlfabrik 21/09/1999
#> 258         WGS84               1e-05                 Anderlfabrik 21/09/1999
#> 259         WGS84               1e-05                     Kleedorf 21/09/1999
#> 260         WGS84               1e-05                     Kleedorf 21/09/1999
#> 261         WGS84               1e-05                     Kleedorf 21/09/1999
#> 262         WGS84               1e-05                     Kleedorf 21/09/1999
#> 263         WGS84               1e-05                     Kleedorf 21/09/1999
#> 264         WGS84               1e-05                     Kleedorf 21/09/1999
#> 265         WGS84               1e-05                     Kleedorf 21/09/1999
#> 266         WGS84               1e-05                     Kleedorf 21/09/1999
#> 267         WGS84               1e-05                     Kleedorf 21/09/1999
#> 268         WGS84               1e-05                      Schrems 20/09/1999
#> 269         WGS84               1e-05                      Schrems 20/09/1999
#> 270         WGS84               1e-05                      Schrems 20/09/1999
#> 271         WGS84               1e-05                      Schrems 20/09/1999
#> 272         WGS84               1e-05                      Schrems 20/09/1999
#> 273         WGS84               1e-05                      Schrems 20/09/1999
#> 274         WGS84               1e-05                      Schrems 20/09/1999
#> 275         WGS84               1e-05                      Schrems 20/09/1999
#> 276         WGS84               1e-05                      Schrems 20/09/1999
#> 277         WGS84               1e-05                      Schrems 20/09/1999
#> 278         WGS84               1e-05                Schleifmuehle 20/09/1999
#> 279         WGS84               1e-05                Schleifmuehle 20/09/1999
#> 280         WGS84               1e-05                Schleifmuehle 20/09/1999
#> 281         WGS84               1e-05                Schleifmuehle 20/09/1999
#> 282         WGS84               1e-05                Schleifmuehle 20/09/1999
#> 283         WGS84               1e-05                      Eugenia 20/09/1999
#> 284         WGS84               1e-05                      Eugenia 20/09/1999
#> 285         WGS84               1e-05                      Eugenia 20/09/1999
#> 286         WGS84               1e-05                      Eugenia 20/09/1999
#> 287         WGS84               1e-05                      Eugenia 20/09/1999
#> 288         WGS84               1e-05                      Eugenia 20/09/1999
#> 289         WGS84               1e-05                   Bachwiesen 20/09/1999
#> 290         WGS84               1e-05                   Bachwiesen 20/09/1999
#> 291         WGS84               1e-05                   Bachwiesen 20/09/1999
#> 292         WGS84               1e-05                   Bachwiesen 20/09/1999
#> 293         WGS84               1e-05                   Bachwiesen 20/09/1999
#> 294         WGS84               1e-05                   Bachwiesen 20/09/1999
#> 295         WGS84               1e-05                   Bachwiesen 20/09/1999
#> 296         WGS84               1e-05                       Mexiko 20/09/1999
#> 297         WGS84               1e-05                       Mexiko 20/09/1999
#> 298         WGS84               1e-05                       Mexiko 20/09/1999
#> 299         WGS84               1e-05                       Mexiko 20/09/1999
#> 300         WGS84               1e-05                       Mexiko 20/09/1999
#>     year    MRR               waterBody country
#> 1   1995 Danube              DuerreAger Austria
#> 2   1995 Danube              DuerreAger Austria
#> 3   1995 Danube              DuerreAger Austria
#> 4   1995 Danube              DuerreAger Austria
#> 5   1995 Danube              DuerreAger Austria
#> 6   1995 Danube              DuerreAger Austria
#> 7   1994 Danube              DuerreAger Austria
#> 8   1994 Danube              DuerreAger Austria
#> 9   1994 Danube              DuerreAger Austria
#> 10  1994 Danube              DuerreAger Austria
#> 11  1992 Danube              DuerreAger Austria
#> 12  1992 Danube              DuerreAger Austria
#> 13  1992 Danube              DuerreAger Austria
#> 14  1994 Danube              DuerreAger Austria
#> 15  1994 Danube              DuerreAger Austria
#> 16  1994 Danube              DuerreAger Austria
#> 17  1994 Danube              DuerreAger Austria
#> 18  1994 Danube              DuerreAger Austria
#> 19  1994 Danube              DuerreAger Austria
#> 20  1994 Danube              DuerreAger Austria
#> 21  1994 Danube                    Ager Austria
#> 22  1994 Danube                    Ager Austria
#> 23  1994 Danube                    Ager Austria
#> 24  1994 Danube                    Ager Austria
#> 25  1994 Danube                    Ager Austria
#> 26  1994 Danube                    Ager Austria
#> 27  1994 Danube                    Ager Austria
#> 28  1994 Danube                    Ager Austria
#> 29  1990 Danube                    Ager Austria
#> 30  1990 Danube                    Ager Austria
#> 31  1990 Danube                    Ager Austria
#> 32  1990 Danube                    Ager Austria
#> 33  1990 Danube                    Ager Austria
#> 34  1990 Danube                    Ager Austria
#> 35  1990 Danube                    Ager Austria
#> 36  1990 Danube                    Ager Austria
#> 37  1990 Danube                    Ager Austria
#> 38  1990 Danube                    Ager Austria
#> 39  1991 Danube                    Ager Austria
#> 40  1991 Danube                    Ager Austria
#> 41  1991 Danube                    Ager Austria
#> 42  1991 Danube                    Ager Austria
#> 43  1991 Danube                    Ager Austria
#> 44  1991 Danube                    Ager Austria
#> 45  1991 Danube                    Ager Austria
#> 46  1991 Danube                    Ager Austria
#> 47  1991 Danube                    Ager Austria
#> 48  1991 Danube                    Ager Austria
#> 49  1993 Danube                    Ager Austria
#> 50  1993 Danube                    Ager Austria
#> 51  1993 Danube                    Ager Austria
#> 52  1993 Danube                    Ager Austria
#> 53  1993 Danube                    Ager Austria
#> 54  1993 Danube                    Ager Austria
#> 55  1993 Danube                    Ager Austria
#> 56  1993 Danube                    Ager Austria
#> 57  1993 Danube                    Ager Austria
#> 58  1991 Danube                    Ager Austria
#> 59  1991 Danube                    Ager Austria
#> 60  1991 Danube                    Ager Austria
#> 61  1991 Danube                    Ager Austria
#> 62  1991 Danube                    Ager Austria
#> 63  1991 Danube                    Ager Austria
#> 64  1991 Danube                    Ager Austria
#> 65  1991 Danube                    Ager Austria
#> 66  1991 Danube                    Ager Austria
#> 67  1991 Danube                    Ager Austria
#> 68  1991 Danube                    Ager Austria
#> 69  1991 Danube                    Ager Austria
#> 70  1991 Danube                    Ager Austria
#> 71  1991 Danube                    Ager Austria
#> 72  1991 Danube                    Ager Austria
#> 73  1993 Danube                    Ager Austria
#> 74  1993 Danube                    Ager Austria
#> 75  1993 Danube                    Ager Austria
#> 76  1993 Danube                    Ager Austria
#> 77  1993 Danube                    Ager Austria
#> 78  1993 Danube                    Ager Austria
#> 79  1993 Danube                    Ager Austria
#> 80  1993 Danube                    Ager Austria
#> 81  1994 Danube                    Ager Austria
#> 82  1994 Danube                    Ager Austria
#> 83  1994 Danube                    Ager Austria
#> 84  1994 Danube                    Ager Austria
#> 85  1994 Danube                    Ager Austria
#> 86  1994 Danube                    Ager Austria
#> 87  1994 Danube                    Ager Austria
#> 88  1994 Danube                    Ager Austria
#> 89  1994 Danube                    Ager Austria
#> 90  1994 Danube                    Ager Austria
#> 91  1994 Danube                    Ager Austria
#> 92  1994 Danube                    Ager Austria
#> 93  1994 Danube                    Ager Austria
#> 94  1994 Danube                    Ager Austria
#> 95  1994 Danube                    Ager Austria
#> 96  1994 Danube                    Ager Austria
#> 97  1994 Danube                    Ager Austria
#> 98  1994 Danube                    Ager Austria
#> 99  1994 Danube                    Ager Austria
#> 100 1994 Danube                    Ager Austria
#> 101 1994 Danube                    Ager Austria
#> 102 1994 Danube                    Ager Austria
#> 103 1994 Danube                    Ager Austria
#> 104 1994 Danube                    Ager Austria
#> 105 1990 Danube                    Ager Austria
#> 106 1990 Danube                    Ager Austria
#> 107 1990 Danube                    Ager Austria
#> 108 1990 Danube                    Ager Austria
#> 109 1990 Danube                    Ager Austria
#> 110 1990 Danube                    Ager Austria
#> 111 1990 Danube                    Ager Austria
#> 112 1994 Danube                    Ager Austria
#> 113 1994 Danube                    Ager Austria
#> 114 1994 Danube                    Ager Austria
#> 115 1994 Danube                    Ager Austria
#> 116 1994 Danube                    Ager Austria
#> 117 1994 Danube                    Ager Austria
#> 118 1994 Danube                    Ager Austria
#> 119 1994 Danube                    Ager Austria
#> 120 1994 Danube                    Ager Austria
#> 121 1994 Danube                    Ager Austria
#> 122 1994 Danube                    Ager Austria
#> 123 1994 Danube                    Ager Austria
#> 124 1994 Danube                    Ager Austria
#> 125 1994 Danube                    Ager Austria
#> 126 1994 Danube                    Ager Austria
#> 127 1994 Danube                    Ager Austria
#> 128 1994 Danube                    Ager Austria
#> 129 1994 Danube                    Ager Austria
#> 130 1994 Danube                    Ager Austria
#> 131 1994 Danube                    Ager Austria
#> 132 1994 Danube                    Ager Austria
#> 133 1994 Danube                    Ager Austria
#> 134 1994 Danube                    Ager Austria
#> 135 1994 Danube                    Ager Austria
#> 136 1994 Danube                    Ager Austria
#> 137 1994 Danube                    Ager Austria
#> 138 1994 Danube                    Ager Austria
#> 139 1994 Danube                    Ager Austria
#> 140 1994 Danube                    Ager Austria
#> 141 1994 Danube                    Ager Austria
#> 142 1994 Danube                    Ager Austria
#> 143 1994 Danube                    Ager Austria
#> 144 1994 Danube                    Ager Austria
#> 145 1994 Danube                    Ager Austria
#> 146 1994 Danube                    Ager Austria
#> 147 1994 Danube                    Ager Austria
#> 148 1994 Danube                    Ager Austria
#> 149 1991 Danube                    Ager Austria
#> 150 1991 Danube                    Ager Austria
#> 151 1991 Danube                    Ager Austria
#> 152 1991 Danube                    Ager Austria
#> 153 1991 Danube                    Ager Austria
#> 154 1991 Danube                    Ager Austria
#> 155 1994 Danube                    Ager Austria
#> 156 1994 Danube                    Ager Austria
#> 157 1994 Danube                    Ager Austria
#> 158 1994 Danube                    Ager Austria
#> 159 1994 Danube                    Ager Austria
#> 160 1994 Danube                    Ager Austria
#> 161 1994 Danube                    Ager Austria
#> 162 1994 Danube                    Ager Austria
#> 163 1994 Danube                    Ager Austria
#> 164 1994 Danube                    Ager Austria
#> 165 1993 Danube                    Ager Austria
#> 166 1993 Danube                    Ager Austria
#> 167 1990 Danube                    Ager Austria
#> 168 1990 Danube                    Ager Austria
#> 169 1993 Danube                    Ager Austria
#> 170 1993 Danube                    Ager Austria
#> 171 1993 Danube                    Ager Austria
#> 172 1993 Danube                    Ager Austria
#> 173 1993 Danube                    Ager Austria
#> 174 1993 Danube                    Ager Austria
#> 175 1993 Danube                    Ager Austria
#> 176 1993 Danube                    Ager Austria
#> 177 1994 Danube                    Ager Austria
#> 178 1994 Danube                    Ager Austria
#> 179 1994 Danube                    Ager Austria
#> 180 1994 Danube                    Ager Austria
#> 181 1994 Danube                    Ager Austria
#> 182 1991 Danube                    Ager Austria
#> 183 1991 Danube                    Ager Austria
#> 184 1991 Danube                    Ager Austria
#> 185 1991 Danube                    Ager Austria
#> 186 1991 Danube                    Ager Austria
#> 187 1999  Rhine                  Alfenz Austria
#> 188 1985 Danube                Alm(OOE) Austria
#> 189 1985 Danube                Alm(OOE) Austria
#> 190 1985 Danube                Alm(OOE) Austria
#> 191 1985 Danube                Alm(OOE) Austria
#> 192 1985 Danube                Alm(OOE) Austria
#> 193 1985 Danube                Alm(OOE) Austria
#> 194 1985 Danube                Alm(OOE) Austria
#> 195 2002 Danube                Alm(OOE) Austria
#> 196 2002 Danube                Alm(OOE) Austria
#> 197 2002 Danube                Alm(OOE) Austria
#> 198 2002 Danube                Alm(OOE) Austria
#> 199 2002 Danube                Alm(OOE) Austria
#> 200 2002 Danube                Alm(OOE) Austria
#> 201 1995 Danube                Antiesen Austria
#> 202 1995 Danube                Antiesen Austria
#> 203 1995 Danube                Antiesen Austria
#> 204 1995 Danube                Antiesen Austria
#> 205 1995 Danube                Antiesen Austria
#> 206 1995 Danube                Antiesen Austria
#> 207 1995 Danube                Antiesen Austria
#> 208 1995 Danube                Antiesen Austria
#> 209 1995 Danube                Antiesen Austria
#> 210 1995 Danube                Antiesen Austria
#> 211 1995 Danube                Antiesen Austria
#> 212 1995 Danube                Antiesen Austria
#> 213 1995 Danube                Antiesen Austria
#> 214 1995 Danube                Antiesen Austria
#> 215 1995 Danube                Antiesen Austria
#> 216 1995 Danube                Antiesen Austria
#> 217 1995 Danube                Antiesen Austria
#> 218 1995 Danube                Antiesen Austria
#> 219 1995 Danube                Antiesen Austria
#> 220 1995 Danube                Antiesen Austria
#> 221 1995 Danube                Antiesen Austria
#> 222 1995 Danube                Antiesen Austria
#> 223 1995 Danube                Antiesen Austria
#> 224 1981 Danube              Bacherbach Austria
#> 225 1989 Danube BadKleinkirchheimerBach Austria
#> 226 1989 Danube BadKleinkirchheimerBach Austria
#> 227 1992 Danube              Bluehnbach Austria
#> 228 1992 Danube              Bluehnbach Austria
#> 229 1993 Danube              Bluehnbach Austria
#> 230 1993 Danube              Bluehnbach Austria
#> 231 1999   Elbe             Braunaubach Austria
#> 232 1999   Elbe             Braunaubach Austria
#> 233 1999   Elbe             Braunaubach Austria
#> 234 1999   Elbe             Braunaubach Austria
#> 235 1999   Elbe             Braunaubach Austria
#> 236 1999   Elbe             Braunaubach Austria
#> 237 1999   Elbe             Braunaubach Austria
#> 238 1999   Elbe             Braunaubach Austria
#> 239 1999   Elbe             Braunaubach Austria
#> 240 1999   Elbe             Braunaubach Austria
#> 241 1999   Elbe             Braunaubach Austria
#> 242 1999   Elbe             Braunaubach Austria
#> 243 1999   Elbe             Braunaubach Austria
#> 244 1999   Elbe             Braunaubach Austria
#> 245 1999   Elbe             Braunaubach Austria
#> 246 1999   Elbe             Braunaubach Austria
#> 247 1999   Elbe             Braunaubach Austria
#> 248 1999   Elbe             Braunaubach Austria
#> 249 1999   Elbe             Braunaubach Austria
#> 250 1999   Elbe             Braunaubach Austria
#> 251 1999   Elbe             Braunaubach Austria
#> 252 1999   Elbe             Braunaubach Austria
#> 253 1999   Elbe             Braunaubach Austria
#> 254 1999   Elbe             Braunaubach Austria
#> 255 1999   Elbe             Braunaubach Austria
#> 256 1999   Elbe             Braunaubach Austria
#> 257 1999   Elbe             Braunaubach Austria
#> 258 1999   Elbe             Braunaubach Austria
#> 259 1999   Elbe             Braunaubach Austria
#> 260 1999   Elbe             Braunaubach Austria
#> 261 1999   Elbe             Braunaubach Austria
#> 262 1999   Elbe             Braunaubach Austria
#> 263 1999   Elbe             Braunaubach Austria
#> 264 1999   Elbe             Braunaubach Austria
#> 265 1999   Elbe             Braunaubach Austria
#> 266 1999   Elbe             Braunaubach Austria
#> 267 1999   Elbe             Braunaubach Austria
#> 268 1999   Elbe             Braunaubach Austria
#> 269 1999   Elbe             Braunaubach Austria
#> 270 1999   Elbe             Braunaubach Austria
#> 271 1999   Elbe             Braunaubach Austria
#> 272 1999   Elbe             Braunaubach Austria
#> 273 1999   Elbe             Braunaubach Austria
#> 274 1999   Elbe             Braunaubach Austria
#> 275 1999   Elbe             Braunaubach Austria
#> 276 1999   Elbe             Braunaubach Austria
#> 277 1999   Elbe             Braunaubach Austria
#> 278 1999   Elbe             Braunaubach Austria
#> 279 1999   Elbe             Braunaubach Austria
#> 280 1999   Elbe             Braunaubach Austria
#> 281 1999   Elbe             Braunaubach Austria
#> 282 1999   Elbe             Braunaubach Austria
#> 283 1999   Elbe             Braunaubach Austria
#> 284 1999   Elbe             Braunaubach Austria
#> 285 1999   Elbe             Braunaubach Austria
#> 286 1999   Elbe             Braunaubach Austria
#> 287 1999   Elbe             Braunaubach Austria
#> 288 1999   Elbe             Braunaubach Austria
#> 289 1999   Elbe             Braunaubach Austria
#> 290 1999   Elbe             Braunaubach Austria
#> 291 1999   Elbe             Braunaubach Austria
#> 292 1999   Elbe             Braunaubach Austria
#> 293 1999   Elbe             Braunaubach Austria
#> 294 1999   Elbe             Braunaubach Austria
#> 295 1999   Elbe             Braunaubach Austria
#> 296 1999   Elbe             Braunaubach Austria
#> 297 1999   Elbe             Braunaubach Austria
#> 298 1999   Elbe             Braunaubach Austria
#> 299 1999   Elbe             Braunaubach Austria
#> 300 1999   Elbe             Braunaubach Austria
```
