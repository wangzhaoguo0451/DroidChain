.class public final Lwn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    .line 20
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lwn;->a:[B

    .line 21
    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lwn;->b:[C

    move v1, v0

    .line 24
    :goto_0
    const/16 v2, 0x80

    if-lt v1, v2, :cond_0

    .line 27
    const/16 v1, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-ge v1, v2, :cond_1

    .line 30
    const/16 v1, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-ge v1, v2, :cond_2

    .line 34
    const/16 v1, 0x39

    :goto_3
    const/16 v2, 0x30

    if-ge v1, v2, :cond_3

    .line 38
    sget-object v1, Lwn;->a:[B

    aput-byte v7, v1, v5

    .line 39
    sget-object v1, Lwn;->a:[B

    aput-byte v8, v1, v6

    move v1, v0

    .line 41
    :goto_4
    const/16 v2, 0x19

    if-le v1, v2, :cond_4

    .line 45
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x33

    if-le v2, v3, :cond_5

    .line 49
    const/16 v1, 0x34

    :goto_6
    const/16 v2, 0x3d

    if-le v1, v2, :cond_6

    .line 52
    sget-object v0, Lwn;->b:[C

    aput-char v5, v0, v7

    .line 53
    sget-object v0, Lwn;->b:[C

    aput-char v6, v0, v8

    .line 55
    return-void

    .line 25
    :cond_0
    sget-object v2, Lwn;->a:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_1
    sget-object v2, Lwn;->a:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 27
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 31
    :cond_2
    sget-object v2, Lwn;->a:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 30
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 35
    :cond_3
    sget-object v2, Lwn;->a:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 34
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 42
    :cond_4
    sget-object v2, Lwn;->b:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 46
    :cond_5
    sget-object v3, Lwn;->b:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 45
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 50
    :cond_6
    sget-object v2, Lwn;->b:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static a([B)Ljava/lang/String;
    .locals 15
    .parameter

    .prologue
    const/16 v14, 0x3d

    const/4 v2, 0x0

    .line 78
    if-nez p0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    .line 82
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    .line 83
    if-nez v0, :cond_1

    .line 84
    const-string v0, ""

    goto :goto_0

    .line 87
    :cond_1
    rem-int/lit8 v7, v0, 0x18

    .line 88
    div-int/lit8 v1, v0, 0x18

    .line 89
    if-eqz v7, :cond_3

    add-int/lit8 v0, v1, 0x1

    :goto_1
    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [C

    move v4, v2

    move v6, v2

    .line 103
    :goto_2
    if-lt v4, v1, :cond_4

    .line 135
    const/16 v0, 0x8

    if-ne v7, v0, :cond_9

    .line 136
    aget-byte v0, p0, v2

    .line 137
    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    .line 142
    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_8

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 144
    :goto_3
    add-int/lit8 v2, v6, 0x1

    sget-object v3, Lwn;->b:[C

    aget-char v0, v3, v0

    aput-char v0, v8, v6

    .line 145
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lwn;->b:[C

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v3, v1

    aput-char v1, v8, v2

    .line 146
    add-int/lit8 v1, v0, 0x1

    aput-char v14, v8, v0

    .line 147
    aput-char v14, v8, v1

    .line 165
    :cond_2
    :goto_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 90
    goto :goto_1

    .line 104
    :cond_4
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    .line 105
    add-int/lit8 v3, v0, 0x1

    aget-byte v9, p0, v0

    .line 106
    add-int/lit8 v5, v3, 0x1

    aget-byte v10, p0, v3

    .line 112
    and-int/lit8 v0, v9, 0xf

    int-to-byte v11, v0

    .line 113
    and-int/lit8 v0, v2, 0x3

    int-to-byte v12, v0

    .line 115
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_5

    shr-int/lit8 v0, v2, 0x2

    int-to-byte v0, v0

    move v3, v0

    .line 117
    :goto_5
    and-int/lit8 v0, v9, -0x80

    if-nez v0, :cond_6

    shr-int/lit8 v0, v9, 0x4

    int-to-byte v0, v0

    move v2, v0

    .line 119
    :goto_6
    and-int/lit8 v0, v10, -0x80

    if-nez v0, :cond_7

    shr-int/lit8 v0, v10, 0x6

    int-to-byte v0, v0

    .line 128
    :goto_7
    add-int/lit8 v9, v6, 0x1

    sget-object v13, Lwn;->b:[C

    aget-char v3, v13, v3

    aput-char v3, v8, v6

    .line 129
    add-int/lit8 v3, v9, 0x1

    sget-object v6, Lwn;->b:[C

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v2, v12

    aget-char v2, v6, v2

    aput-char v2, v8, v9

    .line 130
    add-int/lit8 v6, v3, 0x1

    sget-object v2, Lwn;->b:[C

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v0, v9

    aget-char v0, v2, v0

    aput-char v0, v8, v3

    .line 131
    add-int/lit8 v2, v6, 0x1

    sget-object v0, Lwn;->b:[C

    and-int/lit8 v3, v10, 0x3f

    aget-char v0, v0, v3

    aput-char v0, v8, v6

    .line 103
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v6, v2

    move v2, v5

    goto/16 :goto_2

    .line 116
    :cond_5
    shr-int/lit8 v0, v2, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v3, v0

    goto :goto_5

    .line 118
    :cond_6
    shr-int/lit8 v0, v9, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    move v2, v0

    goto :goto_6

    .line 120
    :cond_7
    shr-int/lit8 v0, v10, 0x6

    xor-int/lit16 v0, v0, 0xfc

    int-to-byte v0, v0

    goto :goto_7

    .line 143
    :cond_8
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    goto/16 :goto_3

    .line 148
    :cond_9
    const/16 v0, 0x10

    if-ne v7, v0, :cond_2

    .line 149
    aget-byte v0, p0, v2

    .line 150
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v1

    .line 151
    and-int/lit8 v1, v2, 0xf

    int-to-byte v3, v1

    .line 152
    and-int/lit8 v1, v0, 0x3

    int-to-byte v4, v1

    .line 154
    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_a

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    move v1, v0

    .line 156
    :goto_8
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_b

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    .line 159
    :goto_9
    add-int/lit8 v2, v6, 0x1

    sget-object v5, Lwn;->b:[C

    aget-char v1, v5, v1

    aput-char v1, v8, v6

    .line 160
    add-int/lit8 v1, v2, 0x1

    sget-object v5, Lwn;->b:[C

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    aget-char v0, v5, v0

    aput-char v0, v8, v2

    .line 161
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lwn;->b:[C

    shl-int/lit8 v3, v3, 0x2

    aget-char v2, v2, v3

    aput-char v2, v8, v1

    .line 162
    aput-char v14, v8, v0

    goto/16 :goto_4

    .line 155
    :cond_a
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v1, v0

    goto :goto_8

    .line 157
    :cond_b
    shr-int/lit8 v0, v2, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    goto :goto_9
.end method

.method private static a(C)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 14
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 177
    if-nez p0, :cond_0

    move-object v0, v3

    .line 266
    :goto_0
    return-object v0

    .line 181
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 183
    if-nez v6, :cond_2

    move v1, v2

    .line 185
    :cond_1
    rem-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_4

    move-object v0, v3

    .line 186
    goto :goto_0

    .line 183
    :cond_2
    array-length v5, v6

    move v4, v2

    move v1, v2

    :goto_1
    if-ge v4, v5, :cond_1

    aget-char v0, v6, v4

    const/16 v7, 0x20

    if-eq v0, v7, :cond_3

    const/16 v7, 0xd

    if-eq v0, v7, :cond_3

    const/16 v7, 0xa

    if-eq v0, v7, :cond_3

    const/16 v7, 0x9

    if-eq v0, v7, :cond_3

    move v0, v2

    :goto_2
    if-nez v0, :cond_11

    add-int/lit8 v0, v1, 0x1

    aget-char v7, v6, v4

    aput-char v7, v6, v1

    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 189
    :cond_4
    div-int/lit8 v7, v1, 0x4

    .line 191
    if-nez v7, :cond_5

    .line 192
    new-array v0, v2, [B

    goto :goto_0

    .line 202
    :cond_5
    mul-int/lit8 v0, v7, 0x3

    new-array v0, v0, [B

    move v1, v2

    move v4, v2

    move v5, v2

    .line 204
    :goto_4
    add-int/lit8 v8, v7, -0x1

    if-lt v5, v8, :cond_7

    .line 223
    add-int/lit8 v7, v1, 0x1

    aget-char v1, v6, v1

    invoke-static {v1}, Lwn;->b(C)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 224
    add-int/lit8 v8, v7, 0x1

    aget-char v7, v6, v7

    invoke-static {v7}, Lwn;->b(C)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_6
    move-object v0, v3

    .line 225
    goto :goto_0

    .line 206
    :cond_7
    add-int/lit8 v8, v1, 0x1

    aget-char v9, v6, v1

    invoke-static {v9}, Lwn;->b(C)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 207
    add-int/lit8 v1, v8, 0x1

    aget-char v8, v6, v8

    invoke-static {v8}, Lwn;->b(C)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 208
    add-int/lit8 v10, v1, 0x1

    aget-char v11, v6, v1

    invoke-static {v11}, Lwn;->b(C)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 209
    add-int/lit8 v1, v10, 0x1

    aget-char v10, v6, v10

    invoke-static {v10}, Lwn;->b(C)Z

    move-result v12

    if-nez v12, :cond_9

    :cond_8
    move-object v0, v3

    .line 210
    goto/16 :goto_0

    .line 213
    :cond_9
    sget-object v12, Lwn;->a:[B

    aget-byte v9, v12, v9

    .line 214
    sget-object v12, Lwn;->a:[B

    aget-byte v8, v12, v8

    .line 215
    sget-object v12, Lwn;->a:[B

    aget-byte v11, v12, v11

    .line 216
    sget-object v12, Lwn;->a:[B

    aget-byte v10, v12, v10

    .line 218
    add-int/lit8 v12, v4, 0x1

    shl-int/lit8 v9, v9, 0x2

    shr-int/lit8 v13, v8, 0x4

    or-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 219
    add-int/lit8 v9, v12, 0x1

    and-int/lit8 v4, v8, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v8, v11, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v0, v12

    .line 220
    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v8, v11, 0x6

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v0, v9

    .line 204
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 228
    :cond_a
    sget-object v9, Lwn;->a:[B

    aget-byte v9, v9, v1

    .line 229
    sget-object v1, Lwn;->a:[B

    aget-byte v7, v1, v7

    .line 231
    add-int/lit8 v1, v8, 0x1

    aget-char v8, v6, v8

    .line 232
    aget-char v1, v6, v1

    .line 233
    invoke-static {v8}, Lwn;->b(C)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v1}, Lwn;->b(C)Z

    move-result v6

    if-nez v6, :cond_10

    .line 234
    :cond_b
    invoke-static {v8}, Lwn;->a(C)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {v1}, Lwn;->a(C)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 235
    and-int/lit8 v1, v7, 0xf

    if-eqz v1, :cond_c

    move-object v0, v3

    .line 237
    goto/16 :goto_0

    .line 239
    :cond_c
    mul-int/lit8 v1, v5, 0x3

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 240
    mul-int/lit8 v3, v5, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    shl-int/lit8 v0, v9, 0x2

    shr-int/lit8 v2, v7, 0x4

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v4

    move-object v0, v1

    .line 242
    goto/16 :goto_0

    .line 243
    :cond_d
    invoke-static {v8}, Lwn;->a(C)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-static {v1}, Lwn;->a(C)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 244
    sget-object v1, Lwn;->a:[B

    aget-byte v6, v1, v8

    .line 245
    and-int/lit8 v1, v6, 0x3

    if-eqz v1, :cond_e

    move-object v0, v3

    .line 247
    goto/16 :goto_0

    .line 249
    :cond_e
    mul-int/lit8 v1, v5, 0x3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 250
    mul-int/lit8 v3, v5, 0x3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v2, v9, 0x2

    shr-int/lit8 v3, v7, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 252
    and-int/lit8 v2, v7, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v6, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    move-object v0, v1

    .line 253
    goto/16 :goto_0

    :cond_f
    move-object v0, v3

    .line 255
    goto/16 :goto_0

    .line 258
    :cond_10
    sget-object v2, Lwn;->a:[B

    aget-byte v2, v2, v8

    .line 259
    sget-object v3, Lwn;->a:[B

    aget-byte v1, v3, v1

    .line 260
    add-int/lit8 v3, v4, 0x1

    shl-int/lit8 v5, v9, 0x2

    shr-int/lit8 v6, v7, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 261
    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v7, 0xf

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v6, v2, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 262
    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto/16 :goto_3
.end method

.method private static b(C)Z
    .locals 2
    .parameter

    .prologue
    .line 66
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lwn;->a:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
