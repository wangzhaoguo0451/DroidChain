.class public final Lbpd;
.super Lbpl;
.source "Code39Reader.java"


# static fields
.field private static final a:[C

.field private static b:[I

.field private static final c:I


# instance fields
.field private final d:Z

.field private final e:Ljava/lang/StringBuilder;

.field private final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lbpd;->a:[C

    .line 47
    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 55
    sput-object v0, Lbpd;->b:[I

    const/16 v1, 0x27

    aget v0, v0, v1

    sput v0, Lbpd;->c:I

    return-void

    .line 47
    :array_0
    .array-data 0x4
        0x34t 0x0t 0x0t 0x0t
        0x21t 0x1t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x60t 0x1t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x24t 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x9t 0x1t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x48t 0x1t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x18t 0x1t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x1t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x3t 0x1t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x42t 0x1t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x1t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x81t 0x1t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0xc0t 0x1t 0x0t 0x0t
        0x91t 0x0t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0x84t 0x1t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
        0x94t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
        0x8at 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbpd;-><init>(Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbpd;-><init>(ZB)V

    .line 79
    return-void
.end method

.method private constructor <init>(ZB)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lbpl;-><init>()V

    .line 92
    iput-boolean p1, p0, Lbpd;->d:Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lbpd;->e:Ljava/lang/StringBuilder;

    .line 95
    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lbpd;->f:[I

    .line 96
    return-void
.end method

.method private static a([I)I
    .locals 13
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 216
    array-length v7, p0

    move v0, v1

    .line 220
    :goto_0
    const v2, 0x7fffffff

    .line 221
    array-length v6, p0

    move v4, v1

    :goto_1
    if-ge v4, v6, :cond_1

    aget v3, p0, v4

    .line 222
    if-ge v3, v2, :cond_0

    if-le v3, v0, :cond_0

    move v2, v3

    .line 221
    :cond_0
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_1
    move v6, v1

    move v0, v1

    move v3, v1

    move v4, v1

    .line 230
    :goto_2
    if-ge v6, v7, :cond_3

    .line 231
    aget v8, p0, v6

    .line 232
    if-le v8, v2, :cond_2

    .line 233
    const/4 v9, 0x1

    add-int/lit8 v10, v7, -0x1

    sub-int/2addr v10, v6

    shl-int/2addr v9, v10

    or-int/2addr v0, v9

    .line 234
    add-int/lit8 v4, v4, 0x1

    .line 235
    add-int/2addr v3, v8

    .line 230
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 238
    :cond_3
    if-ne v4, v11, :cond_6

    move v12, v1

    move v1, v4

    move v4, v12

    .line 242
    :goto_3
    if-ge v4, v7, :cond_4

    if-lez v1, :cond_4

    .line 243
    aget v6, p0, v4

    .line 244
    if-le v6, v2, :cond_5

    .line 245
    add-int/lit8 v1, v1, -0x1

    .line 247
    mul-int/lit8 v6, v6, 0x2

    if-lt v6, v3, :cond_5

    move v0, v5

    .line 255
    :cond_4
    :goto_4
    return v0

    .line 242
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 254
    :cond_6
    if-gt v4, v11, :cond_7

    move v0, v5

    .line 255
    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a(ILbnz;Ljava/util/Map;)Lbnr;
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbnz;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lbnr;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v4, p0, Lbpd;->f:[I

    .line 103
    const/4 v0, 0x0

    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 104
    iget-object v5, p0, Lbpd;->e:Ljava/lang/StringBuilder;

    .line 105
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 107
    iget v6, p2, Lbnz;->b:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lbnz;->c(I)I

    move-result v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_4

    invoke-virtual {p2, v3}, Lbnz;->a(I)Z

    move-result v7

    xor-int/2addr v7, v2

    if-eqz v7, :cond_0

    aget v7, v4, v0

    add-int/lit8 v7, v7, 0x1

    aput v7, v4, v0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v7, 0x8

    if-ne v0, v7, :cond_2

    invoke-static {v4}, Lbpd;->a([I)I

    move-result v7

    sget v8, Lbpd;->c:I

    if-ne v7, v8, :cond_1

    const/4 v7, 0x0

    sub-int v8, v3, v1

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v1, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p2, v7, v1}, Lbnz;->a(II)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v0, 0x2

    new-array v6, v0, [I

    const/4 v0, 0x0

    aput v1, v6, v0

    const/4 v0, 0x1

    aput v3, v6, v0

    .line 109
    const/4 v0, 0x1

    aget v0, v6, v0

    invoke-virtual {p2, v0}, Lbnz;->c(I)I

    move-result v0

    .line 110
    iget v7, p2, Lbnz;->b:I

    .line 115
    :goto_2
    invoke-static {p2, v0, v4}, Lbpd;->a(Lbnz;I[I)V

    .line 116
    invoke-static {v4}, Lbpd;->a([I)I

    move-result v2

    .line 117
    if-gez v2, :cond_5

    .line 118
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 107
    :cond_1
    const/4 v7, 0x0

    aget v7, v4, v7

    const/4 v8, 0x1

    aget v8, v4, v8

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x7

    invoke-static {v4, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput v8, v4, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    aput v8, v4, v7

    add-int/lit8 v0, v0, -0x1

    :goto_3
    const/4 v7, 0x1

    aput v7, v4, v0

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 120
    :cond_5
    const/4 v1, 0x0

    :goto_4
    const/16 v3, 0x2c

    if-ge v1, v3, :cond_7

    sget-object v3, Lbpd;->b:[I

    aget v3, v3, v1

    if-ne v3, v2, :cond_6

    sget-object v2, Lbpd;->a:[C

    aget-char v3, v2, v1

    .line 121
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    const/4 v1, 0x0

    move v2, v0

    :goto_5
    const/16 v8, 0x9

    if-ge v1, v8, :cond_8

    aget v8, v4, v1

    .line 124
    add-int/2addr v2, v8

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 120
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 127
    :cond_8
    invoke-virtual {p2, v2}, Lbnz;->c(I)I

    move-result v1

    .line 128
    const/16 v2, 0x2a

    if-ne v3, v2, :cond_f

    .line 129
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 132
    const/4 v3, 0x0

    .line 133
    const/4 v2, 0x0

    :goto_6
    const/16 v8, 0x9

    if-ge v2, v8, :cond_9

    aget v8, v4, v2

    .line 134
    add-int/2addr v3, v8

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 136
    :cond_9
    sub-int v2, v1, v0

    sub-int/2addr v2, v3

    .line 139
    if-eq v1, v7, :cond_a

    mul-int/lit8 v1, v2, 0x2

    if-ge v1, v3, :cond_a

    .line 140
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 143
    :cond_a
    iget-boolean v1, p0, Lbpd;->d:Z

    if-eqz v1, :cond_d

    .line 144
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    .line 145
    const/4 v2, 0x0

    .line 146
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v4, :cond_b

    .line 147
    const-string v7, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    iget-object v8, p0, Lbpd;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v2, v7

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 149
    :cond_b
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    sget-object v7, Lbpd;->a:[C

    rem-int/lit8 v2, v2, 0x2b

    aget-char v2, v7, v2

    if-eq v1, v2, :cond_c

    .line 150
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    .line 152
    :cond_c
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 155
    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_e

    .line 157
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 161
    :cond_e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    const/4 v2, 0x1

    aget v2, v6, v2

    const/4 v4, 0x0

    aget v4, v6, v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    .line 168
    int-to-float v0, v0

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 169
    new-instance v3, Lbnr;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Lbns;

    const/4 v6, 0x0

    new-instance v7, Lbns;

    int-to-float v8, p1

    invoke-direct {v7, v2, v8}, Lbns;-><init>(FF)V

    aput-object v7, v5, v6

    const/4 v2, 0x1

    new-instance v6, Lbns;

    int-to-float v7, p1

    invoke-direct {v6, v0, v7}, Lbns;-><init>(FF)V

    aput-object v6, v5, v2

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v3, v1, v4, v5, v0}, Lbnr;-><init>(Ljava/lang/String;[B[Lbns;Lcom/google/zxing/BarcodeFormat;)V

    return-object v3

    :cond_f
    move v0, v1

    goto/16 :goto_2
.end method
