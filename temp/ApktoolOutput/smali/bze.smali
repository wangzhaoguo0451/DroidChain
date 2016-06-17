.class final Lbze;
.super Ljava/lang/Object;
.source "Hpack.java"


# instance fields
.field private final a:Lhsp;


# direct methods
.method constructor <init>(Lhsp;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lbze;->a:Lhsp;

    .line 374
    return-void
.end method

.method private a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 398
    if-ge p1, p2, :cond_0

    .line 399
    iget-object v0, p0, Lbze;->a:Lhsp;

    or-int/lit8 v1, p1, 0x0

    invoke-virtual {v0, v1}, Lhsp;->a(I)Lhsp;

    .line 414
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lbze;->a:Lhsp;

    or-int/lit8 v1, p2, 0x0

    invoke-virtual {v0, v1}, Lhsp;->a(I)Lhsp;

    .line 405
    sub-int v0, p1, p2

    .line 408
    :goto_1
    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    .line 409
    and-int/lit8 v1, v0, 0x7f

    .line 410
    iget-object v2, p0, Lbze;->a:Lhsp;

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, Lhsp;->a(I)Lhsp;

    .line 411
    ushr-int/lit8 v0, v0, 0x7

    .line 412
    goto :goto_1

    .line 413
    :cond_1
    iget-object v1, p0, Lbze;->a:Lhsp;

    invoke-virtual {v1, v0}, Lhsp;->a(I)Lhsp;

    goto :goto_0
.end method

.method private a(Lokio/ByteString;)V
    .locals 2
    .parameter

    .prologue
    .line 417
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    invoke-direct {p0, v0, v1}, Lbze;->a(II)V

    .line 418
    iget-object v0, p0, Lbze;->a:Lhsp;

    invoke-virtual {v0, p1}, Lhsp;->a(Lokio/ByteString;)Lhsp;

    .line 419
    return-void
.end method


# virtual methods
.method final a(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbzb;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 380
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    .line 381
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzb;

    iget-object v0, v0, Lbzb;->h:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v4

    .line 382
    invoke-static {}, Lbzc;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 383
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0xf

    invoke-direct {p0, v0, v4}, Lbze;->a(II)V

    .line 386
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzb;

    iget-object v0, v0, Lbzb;->i:Lokio/ByteString;

    invoke-direct {p0, v0}, Lbze;->a(Lokio/ByteString;)V

    .line 380
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lbze;->a:Lhsp;

    invoke-virtual {v0, v2}, Lhsp;->a(I)Lhsp;

    .line 389
    invoke-direct {p0, v4}, Lbze;->a(Lokio/ByteString;)V

    .line 390
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzb;

    iget-object v0, v0, Lbzb;->i:Lokio/ByteString;

    invoke-direct {p0, v0}, Lbze;->a(Lokio/ByteString;)V

    goto :goto_1

    .line 393
    :cond_1
    return-void
.end method
