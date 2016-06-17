.class public final Laqr;
.super Ljava/lang/Object;
.source "ProgressiveJpegParser.java"


# instance fields
.field public a:I

.field public b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final g:Larp;


# direct methods
.method public constructor <init>(Larp;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larp;

    iput-object v0, p0, Laqr;->g:Larp;

    .line 97
    iput v1, p0, Laqr;->e:I

    .line 98
    iput v1, p0, Laqr;->d:I

    .line 99
    iput v1, p0, Laqr;->f:I

    .line 100
    iput v1, p0, Laqr;->b:I

    .line 101
    iput v1, p0, Laqr;->a:I

    .line 102
    iput v1, p0, Laqr;->c:I

    .line 104
    return-void
.end method

.method private a(Ljava/io/InputStream;)Z
    .locals 10
    .parameter

    .prologue
    const/16 v9, 0xff

    const/4 v1, 0x0

    const/4 v8, 0x6

    const/4 v0, 0x1

    .line 153
    iget v3, p0, Laqr;->a:I

    .line 156
    :goto_0
    :try_start_0
    iget v2, p0, Laqr;->c:I

    if-eq v2, v8, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v2, -0x1

    if-eq v4, v2, :cond_1

    .line 157
    iget v2, p0, Laqr;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Laqr;->e:I

    .line 159
    iget v2, p0, Laqr;->c:I

    packed-switch v2, :pswitch_data_0

    .line 218
    const/4 v2, 0x0

    invoke-static {v2}, Ld;->b(Z)V

    .line 221
    :cond_0
    :goto_1
    iput v4, p0, Laqr;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v2

    invoke-static {v2}, Ld;->b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 227
    :cond_1
    iget v2, p0, Laqr;->c:I

    if-eq v2, v8, :cond_c

    iget v2, p0, Laqr;->a:I

    if-eq v2, v3, :cond_c

    :goto_2
    return v0

    .line 161
    :pswitch_0
    if-ne v4, v9, :cond_2

    .line 162
    const/4 v2, 0x1

    :try_start_1
    iput v2, p0, Laqr;->c:I

    goto :goto_1

    .line 164
    :cond_2
    const/4 v2, 0x6

    iput v2, p0, Laqr;->c:I

    goto :goto_1

    .line 169
    :pswitch_1
    const/16 v2, 0xd8

    if-ne v4, v2, :cond_3

    .line 170
    const/4 v2, 0x2

    iput v2, p0, Laqr;->c:I

    goto :goto_1

    .line 172
    :cond_3
    const/4 v2, 0x6

    iput v2, p0, Laqr;->c:I

    goto :goto_1

    .line 177
    :pswitch_2
    if-ne v4, v9, :cond_0

    .line 178
    const/4 v2, 0x3

    iput v2, p0, Laqr;->c:I

    goto :goto_1

    .line 183
    :pswitch_3
    if-ne v4, v9, :cond_4

    .line 184
    const/4 v2, 0x3

    iput v2, p0, Laqr;->c:I

    goto :goto_1

    .line 185
    :cond_4
    if-nez v4, :cond_5

    .line 186
    const/4 v2, 0x2

    iput v2, p0, Laqr;->c:I

    goto :goto_1

    .line 188
    :cond_5
    const/16 v2, 0xda

    if-eq v4, v2, :cond_6

    const/16 v2, 0xd9

    if-ne v4, v2, :cond_8

    .line 189
    :cond_6
    iget v2, p0, Laqr;->e:I

    add-int/lit8 v2, v2, -0x2

    iget v5, p0, Laqr;->f:I

    if-lez v5, :cond_7

    iput v2, p0, Laqr;->b:I

    :cond_7
    iget v2, p0, Laqr;->f:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Laqr;->f:I

    iput v2, p0, Laqr;->a:I

    .line 192
    :cond_8
    if-eq v4, v0, :cond_a

    const/16 v2, 0xd0

    if-lt v4, v2, :cond_9

    const/16 v2, 0xd7

    if-le v4, v2, :cond_a

    :cond_9
    const/16 v2, 0xd9

    if-eq v4, v2, :cond_a

    const/16 v2, 0xd8

    if-eq v4, v2, :cond_a

    move v2, v0

    :goto_3
    if-eqz v2, :cond_b

    .line 193
    const/4 v2, 0x4

    iput v2, p0, Laqr;->c:I

    goto :goto_1

    :cond_a
    move v2, v1

    .line 192
    goto :goto_3

    .line 195
    :cond_b
    const/4 v2, 0x2

    iput v2, p0, Laqr;->c:I

    goto :goto_1

    .line 201
    :pswitch_4
    const/4 v2, 0x5

    iput v2, p0, Laqr;->c:I

    goto :goto_1

    .line 205
    :pswitch_5
    iget v2, p0, Laqr;->d:I

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v4

    .line 210
    add-int/lit8 v2, v2, -0x2

    .line 211
    int-to-long v6, v2

    invoke-static {p1, v6, v7}, Ld;->a(Ljava/io/InputStream;J)J

    .line 212
    iget v5, p0, Laqr;->e:I

    add-int/2addr v2, v5

    iput v2, p0, Laqr;->e:I

    .line 213
    const/4 v2, 0x2

    iput v2, p0, Laqr;->c:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_c
    move v0, v1

    .line 227
    goto :goto_2

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final a(Laqx;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 118
    iget v0, p0, Laqr;->c:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 143
    :goto_0
    return v0

    .line 122
    :cond_0
    invoke-virtual {p1}, Laqx;->b()I

    move-result v0

    .line 127
    iget v2, p0, Laqr;->e:I

    if-gt v0, v2, :cond_1

    move v0, v1

    .line 128
    goto :goto_0

    .line 131
    :cond_1
    new-instance v2, Laru;

    invoke-virtual {p1}, Laqx;->a()Ljava/io/InputStream;

    move-result-object v3

    iget-object v0, p0, Laqr;->g:Larp;

    const/16 v4, 0x4000

    invoke-interface {v0, v4}, Larp;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v4, p0, Laqr;->g:Larp;

    invoke-direct {v2, v3, v0, v4}, Laru;-><init>(Ljava/io/InputStream;[BLakn;)V

    .line 136
    :try_start_0
    iget v0, p0, Laqr;->e:I

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Ld;->a(Ljava/io/InputStream;J)J

    .line 137
    invoke-direct {p0, v2}, Laqr;->a(Ljava/io/InputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 143
    invoke-static {v2}, Lajy;->a(Ljava/io/InputStream;)V

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Ld;->b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-static {v2}, Lajy;->a(Ljava/io/InputStream;)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lajy;->a(Ljava/io/InputStream;)V

    throw v0
.end method
