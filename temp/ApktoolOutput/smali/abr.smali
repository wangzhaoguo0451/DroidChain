.class public final Labr;
.super Labs;
.source "Base64.java"


# static fields
.field private static g:[B

.field private static final h:[B

.field private static final i:[B


# instance fields
.field private final j:[B

.field private final k:[B

.field private final l:[B

.field private final m:I

.field private final n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x32

    const/16 v6, 0x31

    const/16 v5, 0x30

    const/16 v4, 0x2d

    const/4 v3, 0x2

    .line 83
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Labr;->g:[B

    .line 93
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Labr;->h:[B

    .line 105
    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    aput-byte v1, v0, v3

    const/4 v1, 0x3

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    aput-byte v1, v0, v4

    const/16 v1, 0x2e

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    aput-byte v1, v0, v5

    const/16 v1, 0x78

    aput-byte v1, v0, v6

    const/16 v1, 0x79

    aput-byte v1, v0, v7

    const/16 v1, 0x33

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    aput-byte v5, v0, v1

    const/16 v1, 0x35

    aput-byte v6, v0, v1

    const/16 v1, 0x36

    aput-byte v7, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    aput-byte v4, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    .line 126
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Labr;->i:[B

    return-void

    .line 83
    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    .line 93
    nop

    :array_1
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 126
    :array_2
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x3et
        0xfft
        0x3et
        0xfft
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xfft
        0xfft
        0xfft
        0xfft
        0x3ft
        0xfft
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Labr;-><init>(B)V

    .line 199
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 245
    sget-object v0, Labr;->g:[B

    invoke-direct {p0, v0}, Labr;-><init>([B)V

    .line 246
    return-void
.end method

.method private constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labr;-><init>([BB)V

    .line 278
    return-void
.end method

.method private constructor <init>([BB)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 313
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v1, v0}, Labs;-><init>(II)V

    .line 156
    sget-object v0, Labr;->i:[B

    iput-object v0, p0, Labr;->k:[B

    .line 318
    if-eqz p1, :cond_2

    .line 319
    invoke-virtual {p0, p1}, Labr;->d([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-static {p1}, Ld;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 321
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lineSeparator must not contain base64 characters: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_0
    array-length v0, p1

    goto :goto_0

    .line 325
    :cond_1
    iput v2, p0, Labr;->n:I

    .line 334
    iput-object v3, p0, Labr;->l:[B

    .line 340
    :goto_1
    const/4 v0, 0x3

    iput v0, p0, Labr;->m:I

    .line 341
    sget-object v0, Labr;->h:[B

    iput-object v0, p0, Labr;->j:[B

    .line 343
    return-void

    .line 337
    :cond_2
    iput v2, p0, Labr;->n:I

    .line 338
    iput-object v3, p0, Labr;->l:[B

    goto :goto_1
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 626
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-static {p0}, Ld;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Labr;

    sget-object v1, Labr;->g:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labr;-><init>([BB)V

    invoke-virtual {v0, p0}, Labr;->e([B)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Input array too big, the output array would be bigger ("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") than the specified maximum size of 2147483647"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0, p0}, Labr;->c([B)[B

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 2
    .parameter

    .prologue
    .line 782
    new-instance v0, Labr;

    invoke-direct {v0}, Labr;-><init>()V

    invoke-static {p0}, Ld;->i(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Labs;->b([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a([BII)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/16 v6, 0x3d

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 378
    iget-boolean v0, p0, Labr;->d:Z

    if-eqz v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    if-gez p3, :cond_4

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Labr;->d:Z

    .line 385
    iget v0, p0, Labr;->f:I

    if-nez v0, :cond_2

    iget v0, p0, Labr;->a:I

    if-eqz v0, :cond_0

    .line 388
    :cond_2
    invoke-virtual {p0, v8}, Labr;->a(I)V

    .line 389
    iget v0, p0, Labr;->c:I

    .line 390
    iget v1, p0, Labr;->f:I

    packed-switch v1, :pswitch_data_0

    .line 414
    :cond_3
    :goto_1
    iget v1, p0, Labr;->e:I

    iget v3, p0, Labr;->c:I

    sub-int v0, v3, v0

    add-int/2addr v0, v1

    iput v0, p0, Labr;->e:I

    .line 418
    iget v0, p0, Labr;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Labr;->e:I

    if-lez v0, :cond_0

    .line 419
    iget-object v0, p0, Labr;->b:[B

    iget v1, p0, Labr;->c:I

    array-length v3, v7

    invoke-static {v7, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    iget v0, p0, Labr;->c:I

    array-length v1, v7

    add-int/2addr v0, v1

    iput v0, p0, Labr;->c:I

    goto :goto_0

    .line 392
    :pswitch_0
    iget-object v1, p0, Labr;->b:[B

    iget v3, p0, Labr;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labr;->c:I

    iget-object v4, p0, Labr;->j:[B

    iget v5, p0, Labr;->o:I

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 395
    iget-object v1, p0, Labr;->b:[B

    iget v3, p0, Labr;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labr;->c:I

    iget-object v4, p0, Labr;->j:[B

    iget v5, p0, Labr;->o:I

    shl-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 398
    iget-object v1, p0, Labr;->j:[B

    sget-object v3, Labr;->h:[B

    if-ne v1, v3, :cond_3

    .line 399
    iget-object v1, p0, Labr;->b:[B

    iget v3, p0, Labr;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labr;->c:I

    aput-byte v6, v1, v3

    .line 400
    iget-object v1, p0, Labr;->b:[B

    iget v3, p0, Labr;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labr;->c:I

    aput-byte v6, v1, v3

    goto :goto_1

    .line 405
    :pswitch_1
    iget-object v1, p0, Labr;->b:[B

    iget v3, p0, Labr;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labr;->c:I

    iget-object v4, p0, Labr;->j:[B

    iget v5, p0, Labr;->o:I

    shr-int/lit8 v5, v5, 0xa

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 406
    iget-object v1, p0, Labr;->b:[B

    iget v3, p0, Labr;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labr;->c:I

    iget-object v4, p0, Labr;->j:[B

    iget v5, p0, Labr;->o:I

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 407
    iget-object v1, p0, Labr;->b:[B

    iget v3, p0, Labr;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labr;->c:I

    iget-object v4, p0, Labr;->j:[B

    iget v5, p0, Labr;->o:I

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 409
    iget-object v1, p0, Labr;->j:[B

    sget-object v3, Labr;->h:[B

    if-ne v1, v3, :cond_3

    .line 410
    iget-object v1, p0, Labr;->b:[B

    iget v3, p0, Labr;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labr;->c:I

    aput-byte v6, v1, v3

    goto/16 :goto_1

    :cond_4
    move v1, v2

    .line 424
    :goto_2
    if-ge v1, p3, :cond_0

    .line 425
    invoke-virtual {p0, v8}, Labr;->a(I)V

    .line 426
    iget v0, p0, Labr;->f:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Labr;->f:I

    .line 427
    add-int/lit8 v3, p2, 0x1

    aget-byte v0, p1, p2

    .line 428
    if-gez v0, :cond_5

    .line 429
    add-int/lit16 v0, v0, 0x100

    .line 431
    :cond_5
    iget v4, p0, Labr;->o:I

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    iput v0, p0, Labr;->o:I

    .line 432
    iget v0, p0, Labr;->f:I

    if-nez v0, :cond_6

    .line 433
    iget-object v0, p0, Labr;->b:[B

    iget v4, p0, Labr;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labr;->c:I

    iget-object v5, p0, Labr;->j:[B

    iget v6, p0, Labr;->o:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 435
    iget-object v0, p0, Labr;->b:[B

    iget v4, p0, Labr;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labr;->c:I

    iget-object v5, p0, Labr;->j:[B

    iget v6, p0, Labr;->o:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 437
    iget-object v0, p0, Labr;->b:[B

    iget v4, p0, Labr;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labr;->c:I

    iget-object v5, p0, Labr;->j:[B

    iget v6, p0, Labr;->o:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 438
    iget-object v0, p0, Labr;->b:[B

    iget v4, p0, Labr;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labr;->c:I

    iget-object v5, p0, Labr;->j:[B

    iget v6, p0, Labr;->o:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 439
    iget v0, p0, Labr;->e:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Labr;->e:I

    .line 440
    iget v0, p0, Labr;->a:I

    if-lez v0, :cond_6

    iget v0, p0, Labr;->a:I

    iget v4, p0, Labr;->e:I

    if-gt v0, v4, :cond_6

    .line 441
    iget-object v0, p0, Labr;->b:[B

    iget v4, p0, Labr;->c:I

    array-length v5, v7

    invoke-static {v7, v2, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    iget v0, p0, Labr;->c:I

    array-length v4, v7

    add-int/2addr v0, v4

    iput v0, p0, Labr;->c:I

    .line 444
    iput v2, p0, Labr;->e:I

    .line 424
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move p2, v3

    goto/16 :goto_2

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(B)Z
    .locals 2
    .parameter

    .prologue
    .line 883
    if-ltz p1, :cond_0

    iget-object v0, p0, Labr;->k:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Labr;->k:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b([BII)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 480
    iget-boolean v0, p0, Labr;->d:Z

    if-eqz v0, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    if-gez p3, :cond_2

    .line 484
    iput-boolean v5, p0, Labr;->d:Z

    .line 486
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_3

    .line 487
    iget v1, p0, Labr;->m:I

    invoke-virtual {p0, v1}, Labr;->a(I)V

    .line 488
    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    .line 489
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_4

    .line 491
    iput-boolean v5, p0, Labr;->d:Z

    .line 513
    :cond_3
    iget-boolean v0, p0, Labr;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Labr;->f:I

    if-eqz v0, :cond_0

    .line 514
    iget v0, p0, Labr;->m:I

    invoke-virtual {p0, v0}, Labr;->a(I)V

    .line 518
    iget v0, p0, Labr;->f:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 522
    :pswitch_0
    iget v0, p0, Labr;->o:I

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Labr;->o:I

    .line 523
    iget-object v0, p0, Labr;->b:[B

    iget v1, p0, Labr;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labr;->c:I

    iget v2, p0, Labr;->o:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 494
    :cond_4
    if-ltz v2, :cond_5

    const/16 v3, 0x7b

    if-ge v2, v3, :cond_5

    .line 495
    sget-object v3, Labr;->i:[B

    aget-byte v2, v3, v2

    .line 496
    if-ltz v2, :cond_5

    .line 497
    iget v3, p0, Labr;->f:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x4

    iput v3, p0, Labr;->f:I

    .line 498
    iget v3, p0, Labr;->o:I

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    iput v2, p0, Labr;->o:I

    .line 500
    iget v2, p0, Labr;->f:I

    if-nez v2, :cond_5

    .line 501
    iget-object v2, p0, Labr;->b:[B

    iget v3, p0, Labr;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labr;->c:I

    iget v4, p0, Labr;->o:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 502
    iget-object v2, p0, Labr;->b:[B

    iget v3, p0, Labr;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labr;->c:I

    iget v4, p0, Labr;->o:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 503
    iget-object v2, p0, Labr;->b:[B

    iget v3, p0, Labr;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labr;->c:I

    iget v4, p0, Labr;->o:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 486
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto/16 :goto_1

    .line 526
    :pswitch_1
    iget v0, p0, Labr;->o:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Labr;->o:I

    .line 527
    iget-object v0, p0, Labr;->b:[B

    iget v1, p0, Labr;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labr;->c:I

    iget v2, p0, Labr;->o:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 528
    iget-object v0, p0, Labr;->b:[B

    iget v1, p0, Labr;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labr;->c:I

    iget v2, p0, Labr;->o:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 518
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
