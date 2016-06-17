.class public final Lbqr;
.super Ljava/lang/Object;
.source "GeneralAppIdDecoder.java"


# instance fields
.field private final a:Lbnz;

.field private final b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

.field private final c:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lbnz;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-direct {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;-><init>()V

    iput-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lbqr;->c:Ljava/lang/StringBuilder;

    .line 44
    iput-object p1, p0, Lbqr;->a:Lbnz;

    .line 45
    return-void
.end method

.method public static a(Lbnz;II)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 108
    move v1, v0

    .line 109
    :goto_0
    if-ge v1, p2, :cond_1

    .line 110
    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Lbnz;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const/4 v2, 0x1

    sub-int v3, p2, v1

    add-int/lit8 v3, v3, -0x1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 109
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_1
    return v0
.end method

.method private a()Lbql;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/16 v6, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 161
    :goto_0
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v3, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    add-int/lit8 v0, v3, 0x7

    iget-object v4, p0, Lbqr;->a:Lbnz;

    iget v4, v4, Lbnz;->b:I

    if-le v0, v4, :cond_1

    add-int/lit8 v0, v3, 0x4

    iget-object v3, p0, Lbqr;->a:Lbnz;

    iget v3, v3, Lbnz;->b:I

    if-gt v0, v3, :cond_0

    move v0, v2

    :goto_1
    if-eqz v0, :cond_a

    .line 162
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v3, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    add-int/lit8 v0, v3, 0x7

    iget-object v4, p0, Lbqr;->a:Lbnz;

    iget v4, v4, Lbnz;->b:I

    if-le v0, v4, :cond_5

    invoke-virtual {p0, v3, v7}, Lbqr;->a(II)I

    move-result v3

    if-nez v3, :cond_4

    new-instance v0, Lbqo;

    iget-object v3, p0, Lbqr;->a:Lbnz;

    iget v3, v3, Lbnz;->b:I

    invoke-direct {v0, v3, v6, v6}, Lbqo;-><init>(III)V

    .line 163
    :goto_2
    iget-object v3, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v4, v0, Lbqp;->d:I

    iput v4, v3, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    .line 165
    iget v3, v0, Lbqo;->a:I

    if-ne v3, v6, :cond_6

    move v3, v2

    :goto_3
    if-eqz v3, :cond_8

    .line 167
    invoke-virtual {v0}, Lbqo;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 168
    new-instance v0, Lbqn;

    iget-object v1, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    iget-object v3, p0, Lbqr;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lbqn;-><init>(ILjava/lang/String;)V

    .line 172
    :goto_4
    new-instance v1, Lbql;

    invoke-direct {v1, v0, v2}, Lbql;-><init>(Lbqn;Z)V

    move-object v0, v1

    .line 187
    :goto_5
    return-object v0

    :cond_0
    move v0, v1

    .line 161
    goto :goto_1

    :cond_1
    move v0, v3

    :goto_6
    add-int/lit8 v4, v3, 0x3

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lbqr;->a:Lbnz;

    invoke-virtual {v4, v0}, Lbnz;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_3
    iget-object v0, p0, Lbqr;->a:Lbnz;

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v3}, Lbnz;->a(I)Z

    move-result v0

    goto :goto_1

    .line 162
    :cond_4
    new-instance v0, Lbqo;

    iget-object v4, p0, Lbqr;->a:Lbnz;

    iget v4, v4, Lbnz;->b:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v4, v3, v6}, Lbqo;-><init>(III)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x7

    invoke-virtual {p0, v3, v0}, Lbqr;->a(II)I

    move-result v0

    add-int/lit8 v4, v0, -0x8

    div-int/lit8 v4, v4, 0xb

    add-int/lit8 v0, v0, -0x8

    rem-int/lit8 v5, v0, 0xb

    new-instance v0, Lbqo;

    add-int/lit8 v3, v3, 0x7

    invoke-direct {v0, v3, v4, v5}, Lbqo;-><init>(III)V

    goto :goto_2

    :cond_6
    move v3, v1

    .line 165
    goto :goto_3

    .line 170
    :cond_7
    new-instance v1, Lbqn;

    iget-object v3, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    iget-object v4, p0, Lbqr;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v0, v0, Lbqo;->b:I

    invoke-direct {v1, v3, v4, v0}, Lbqn;-><init>(ILjava/lang/String;I)V

    move-object v0, v1

    goto :goto_4

    .line 174
    :cond_8
    iget-object v3, p0, Lbqr;->c:Ljava/lang/StringBuilder;

    iget v4, v0, Lbqo;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Lbqo;->a()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 177
    new-instance v1, Lbqn;

    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v0, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    iget-object v3, p0, Lbqr;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lbqn;-><init>(ILjava/lang/String;)V

    .line 178
    new-instance v0, Lbql;

    invoke-direct {v0, v1, v2}, Lbql;-><init>(Lbqn;Z)V

    goto :goto_5

    .line 180
    :cond_9
    iget-object v3, p0, Lbqr;->c:Ljava/lang/StringBuilder;

    iget v0, v0, Lbqo;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 183
    :cond_a
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v3, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    add-int/lit8 v0, v3, 0x1

    iget-object v4, p0, Lbqr;->a:Lbnz;

    iget v4, v4, Lbnz;->b:I

    if-le v0, v4, :cond_c

    move v0, v1

    :goto_7
    if-eqz v0, :cond_b

    .line 184
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->ALPHA:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v1, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 185
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a(I)V

    .line 187
    :cond_b
    new-instance v0, Lbql;

    invoke-direct {v0}, Lbql;-><init>()V

    goto/16 :goto_5

    :cond_c
    move v0, v1

    .line 183
    :goto_8
    if-ge v0, v7, :cond_e

    add-int v4, v0, v3

    iget-object v5, p0, Lbqr;->a:Lbnz;

    iget v5, v5, Lbnz;->b:I

    if-ge v4, v5, :cond_e

    iget-object v4, p0, Lbqr;->a:Lbnz;

    add-int v5, v3, v0

    invoke-virtual {v4, v5}, Lbnz;->a(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move v0, v1

    goto :goto_7

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_e
    move v0, v2

    goto :goto_7
.end method

.method private a(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 424
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lbqr;->a:Lbnz;

    iget v2, v2, Lbnz;->b:I

    if-le v1, v2, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 428
    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    add-int v2, v1, p1

    iget-object v3, p0, Lbqr;->a:Lbnz;

    iget v3, v3, Lbnz;->b:I

    if-ge v2, v3, :cond_4

    .line 429
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 430
    iget-object v2, p0, Lbqr;->a:Lbnz;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Lbnz;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 433
    :cond_3
    iget-object v2, p0, Lbqr;->a:Lbnz;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Lbnz;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 438
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()Lbql;
    .locals 8

    .prologue
    const/16 v7, 0xf

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v2, 0x1

    const/4 v4, 0x5

    .line 191
    :goto_0
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v0, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    add-int/lit8 v1, v0, 0x5

    iget-object v3, p0, Lbqr;->a:Lbnz;

    iget v3, v3, Lbnz;->b:I

    if-gt v1, v3, :cond_2

    invoke-virtual {p0, v0, v4}, Lbqr;->a(II)I

    move-result v1

    if-lt v1, v4, :cond_0

    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    move v0, v2

    :goto_1
    if-eqz v0, :cond_8

    .line 192
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v3, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    invoke-virtual {p0, v3, v4}, Lbqr;->a(II)I

    move-result v1

    if-ne v1, v7, :cond_3

    new-instance v0, Lbqm;

    add-int/lit8 v1, v3, 0x5

    const/16 v3, 0x24

    invoke-direct {v0, v1, v3}, Lbqm;-><init>(IC)V

    .line 193
    :goto_2
    iget-object v1, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v3, v0, Lbqp;->d:I

    iput v3, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    .line 195
    invoke-virtual {v0}, Lbqm;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 196
    new-instance v1, Lbqn;

    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v0, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    iget-object v3, p0, Lbqr;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lbqn;-><init>(ILjava/lang/String;)V

    .line 197
    new-instance v0, Lbql;

    invoke-direct {v0, v1, v2}, Lbql;-><init>(Lbqn;Z)V

    .line 214
    :goto_3
    return-object v0

    .line 191
    :cond_0
    add-int/lit8 v1, v0, 0x7

    iget-object v3, p0, Lbqr;->a:Lbnz;

    iget v3, v3, Lbnz;->b:I

    if-gt v1, v3, :cond_2

    invoke-virtual {p0, v0, v5}, Lbqr;->a(II)I

    move-result v1

    const/16 v3, 0x40

    if-lt v1, v3, :cond_1

    const/16 v3, 0x74

    if-ge v1, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, 0x8

    iget-object v3, p0, Lbqr;->a:Lbnz;

    iget v3, v3, Lbnz;->b:I

    if-gt v1, v3, :cond_2

    invoke-virtual {p0, v0, v6}, Lbqr;->a(II)I

    move-result v0

    const/16 v1, 0xe8

    if-lt v0, v1, :cond_2

    const/16 v1, 0xfd

    if-ge v0, v1, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 192
    :cond_3
    if-lt v1, v4, :cond_4

    if-ge v1, v7, :cond_4

    new-instance v0, Lbqm;

    add-int/lit8 v3, v3, 0x5

    add-int/lit8 v1, v1, 0x30

    add-int/lit8 v1, v1, -0x5

    int-to-char v1, v1

    invoke-direct {v0, v3, v1}, Lbqm;-><init>(IC)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v3, v5}, Lbqr;->a(II)I

    move-result v1

    const/16 v0, 0x40

    if-lt v1, v0, :cond_5

    const/16 v0, 0x5a

    if-ge v1, v0, :cond_5

    new-instance v0, Lbqm;

    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    invoke-direct {v0, v3, v1}, Lbqm;-><init>(IC)V

    goto :goto_2

    :cond_5
    const/16 v0, 0x5a

    if-lt v1, v0, :cond_6

    const/16 v0, 0x74

    if-ge v1, v0, :cond_6

    new-instance v0, Lbqm;

    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v1, v1, 0x7

    int-to-char v1, v1

    invoke-direct {v0, v3, v1}, Lbqm;-><init>(IC)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0, v3, v6}, Lbqr;->a(II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_0
    const/16 v0, 0x21

    :goto_4
    new-instance v1, Lbqm;

    add-int/lit8 v3, v3, 0x8

    invoke-direct {v1, v3, v0}, Lbqm;-><init>(IC)V

    move-object v0, v1

    goto/16 :goto_2

    :pswitch_1
    const/16 v0, 0x22

    goto :goto_4

    :pswitch_2
    const/16 v0, 0x25

    goto :goto_4

    :pswitch_3
    const/16 v0, 0x26

    goto :goto_4

    :pswitch_4
    const/16 v0, 0x27

    goto :goto_4

    :pswitch_5
    const/16 v0, 0x28

    goto :goto_4

    :pswitch_6
    const/16 v0, 0x29

    goto :goto_4

    :pswitch_7
    const/16 v0, 0x2a

    goto :goto_4

    :pswitch_8
    const/16 v0, 0x2b

    goto :goto_4

    :pswitch_9
    const/16 v0, 0x2c

    goto :goto_4

    :pswitch_a
    const/16 v0, 0x2d

    goto :goto_4

    :pswitch_b
    const/16 v0, 0x2e

    goto :goto_4

    :pswitch_c
    const/16 v0, 0x2f

    goto :goto_4

    :pswitch_d
    const/16 v0, 0x3a

    goto :goto_4

    :pswitch_e
    const/16 v0, 0x3b

    goto :goto_4

    :pswitch_f
    const/16 v0, 0x3c

    goto :goto_4

    :pswitch_10
    const/16 v0, 0x3d

    goto :goto_4

    :pswitch_11
    const/16 v0, 0x3e

    goto :goto_4

    :pswitch_12
    const/16 v0, 0x3f

    goto :goto_4

    :pswitch_13
    const/16 v0, 0x5f

    goto :goto_4

    :pswitch_14
    const/16 v0, 0x20

    goto :goto_4

    .line 199
    :cond_7
    iget-object v1, p0, Lbqr;->c:Ljava/lang/StringBuilder;

    iget-char v0, v0, Lbqm;->a:C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 202
    :cond_8
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v0, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    invoke-direct {p0, v0}, Lbqr;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 203
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a(I)V

    .line 204
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->NUMERIC:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v1, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 214
    :cond_9
    :goto_5
    new-instance v0, Lbql;

    invoke-direct {v0}, Lbql;-><init>()V

    goto/16 :goto_3

    .line 205
    :cond_a
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v0, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    invoke-direct {p0, v0}, Lbqr;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 206
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v0, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lbqr;->a:Lbnz;

    iget v1, v1, Lbnz;->b:I

    if-ge v0, v1, :cond_b

    .line 207
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a(I)V

    .line 212
    :goto_6
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->ALPHA:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v1, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    goto :goto_5

    .line 209
    :cond_b
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget-object v1, p0, Lbqr;->a:Lbnz;

    iget v1, v1, Lbnz;->b:I

    iput v1, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    goto :goto_6

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0xe8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method private b(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 443
    add-int/lit8 v1, p1, 0x3

    iget-object v2, p0, Lbqr;->a:Lbnz;

    iget v2, v2, Lbnz;->b:I

    if-le v1, v2, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, p1

    .line 447
    :goto_1
    add-int/lit8 v2, p1, 0x3

    if-ge v1, v2, :cond_2

    .line 448
    iget-object v2, p0, Lbqr;->a:Lbnz;

    invoke-virtual {v2, v1}, Lbnz;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 452
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lbqr;->a:Lbnz;

    invoke-static {v0, p1, p2}, Lbqr;->a(Lbnz;II)I

    move-result v0

    return v0
.end method

.method final a(ILjava/lang/String;)Lbqn;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 119
    iget-object v0, p0, Lbqr;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 121
    if-eqz p2, :cond_0

    .line 122
    iget-object v0, p0, Lbqr;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_0
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iput p1, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    .line 127
    :cond_1
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v4, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget-object v0, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->ALPHA:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    if-ne v0, v1, :cond_4

    move v0, v2

    :goto_0
    if-eqz v0, :cond_f

    :goto_1
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v0, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    add-int/lit8 v1, v0, 0x5

    iget-object v5, p0, Lbqr;->a:Lbnz;

    iget v5, v5, Lbnz;->b:I

    if-gt v1, v5, :cond_6

    invoke-virtual {p0, v0, v6}, Lbqr;->a(II)I

    move-result v1

    if-lt v1, v6, :cond_5

    const/16 v5, 0x10

    if-ge v1, v5, :cond_5

    move v0, v2

    :goto_2
    if-eqz v0, :cond_b

    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v5, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    invoke-virtual {p0, v5, v6}, Lbqr;->a(II)I

    move-result v1

    if-ne v1, v8, :cond_7

    new-instance v0, Lbqm;

    add-int/lit8 v1, v5, 0x5

    const/16 v5, 0x24

    invoke-direct {v0, v1, v5}, Lbqm;-><init>(IC)V

    :goto_3
    iget-object v1, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v5, v0, Lbqp;->d:I

    iput v5, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    invoke-virtual {v0}, Lbqm;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lbqn;

    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v0, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    iget-object v5, p0, Lbqr;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lbqn;-><init>(ILjava/lang/String;)V

    new-instance v0, Lbql;

    invoke-direct {v0, v1, v2}, Lbql;-><init>(Lbqn;Z)V

    :goto_4
    iget-boolean v1, v0, Lbql;->b:Z

    :goto_5
    iget-object v5, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v5, v5, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    if-eq v4, v5, :cond_12

    move v4, v2

    :goto_6
    if-nez v4, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-eqz v1, :cond_1

    :cond_3
    iget-object v1, v0, Lbql;->a:Lbqn;

    .line 128
    if-eqz v1, :cond_13

    iget-boolean v0, v1, Lbqn;->c:Z

    if-eqz v0, :cond_13

    .line 129
    new-instance v0, Lbqn;

    iget-object v2, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    iget-object v3, p0, Lbqr;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v1, v1, Lbqn;->b:I

    invoke-direct {v0, v2, v3, v1}, Lbqn;-><init>(ILjava/lang/String;I)V

    .line 131
    :goto_7
    return-object v0

    :cond_4
    move v0, v3

    .line 127
    goto :goto_0

    :cond_5
    add-int/lit8 v1, v0, 0x6

    iget-object v5, p0, Lbqr;->a:Lbnz;

    iget v5, v5, Lbnz;->b:I

    if-gt v1, v5, :cond_6

    invoke-virtual {p0, v0, v7}, Lbqr;->a(II)I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_6

    const/16 v1, 0x3f

    if-ge v0, v1, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    if-lt v1, v6, :cond_8

    if-ge v1, v8, :cond_8

    new-instance v0, Lbqm;

    add-int/lit8 v5, v5, 0x5

    add-int/lit8 v1, v1, 0x30

    add-int/lit8 v1, v1, -0x5

    int-to-char v1, v1

    invoke-direct {v0, v5, v1}, Lbqm;-><init>(IC)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v5, v7}, Lbqr;->a(II)I

    move-result v1

    const/16 v0, 0x20

    if-lt v1, v0, :cond_9

    const/16 v0, 0x3a

    if-ge v1, v0, :cond_9

    new-instance v0, Lbqm;

    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v1, v1, 0x21

    int-to-char v1, v1

    invoke-direct {v0, v5, v1}, Lbqm;-><init>(IC)V

    goto/16 :goto_3

    :cond_9
    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Decoding invalid alphanumeric value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x2a

    :goto_8
    new-instance v1, Lbqm;

    add-int/lit8 v5, v5, 0x6

    invoke-direct {v1, v5, v0}, Lbqm;-><init>(IC)V

    move-object v0, v1

    goto/16 :goto_3

    :pswitch_1
    const/16 v0, 0x2c

    goto :goto_8

    :pswitch_2
    const/16 v0, 0x2d

    goto :goto_8

    :pswitch_3
    const/16 v0, 0x2e

    goto :goto_8

    :pswitch_4
    const/16 v0, 0x2f

    goto :goto_8

    :cond_a
    iget-object v1, p0, Lbqr;->c:Ljava/lang/StringBuilder;

    iget-char v0, v0, Lbqm;->a:C

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v0, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    invoke-direct {p0, v0}, Lbqr;->b(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a(I)V

    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->NUMERIC:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v1, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    :cond_c
    :goto_9
    new-instance v0, Lbql;

    invoke-direct {v0}, Lbql;-><init>()V

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v0, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    invoke-direct {p0, v0}, Lbqr;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v0, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lbqr;->a:Lbnz;

    iget v1, v1, Lbnz;->b:I

    if-ge v0, v1, :cond_e

    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a(I)V

    :goto_a
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->ISO_IEC_646:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v1, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    goto :goto_9

    :cond_e
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget-object v1, p0, Lbqr;->a:Lbnz;

    iget v1, v1, Lbnz;->b:I

    iput v1, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    goto :goto_a

    :cond_f
    iget-object v0, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget-object v0, v0, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->ISO_IEC_646:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    if-ne v0, v1, :cond_10

    move v0, v2

    :goto_b
    if-eqz v0, :cond_11

    invoke-direct {p0}, Lbqr;->b()Lbql;

    move-result-object v0

    iget-boolean v1, v0, Lbql;->b:Z

    goto/16 :goto_5

    :cond_10
    move v0, v3

    goto :goto_b

    :cond_11
    invoke-direct {p0}, Lbqr;->a()Lbql;

    move-result-object v0

    iget-boolean v1, v0, Lbql;->b:Z

    goto/16 :goto_5

    :cond_12
    move v4, v3

    goto/16 :goto_6

    .line 131
    :cond_13
    new-instance v0, Lbqn;

    iget-object v1, p0, Lbqr;->b:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;

    iget v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->a:I

    iget-object v2, p0, Lbqr;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbqn;-><init>(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method final a(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 48
    move-object v0, v1

    .line 51
    :goto_0
    invoke-virtual {p0, p2, v0}, Lbqr;->a(ILjava/lang/String;)Lbqn;

    move-result-object v2

    .line 52
    iget-object v0, v2, Lbqn;->a:Ljava/lang/String;

    invoke-static {v0}, Lbqq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_0
    iget-boolean v0, v2, Lbqn;->c:Z

    if-eqz v0, :cond_1

    .line 57
    iget v0, v2, Lbqn;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_1
    iget v3, v2, Lbqp;->d:I

    if-eq p2, v3, :cond_2

    .line 63
    iget p2, v2, Lbqp;->d:I

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 59
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
