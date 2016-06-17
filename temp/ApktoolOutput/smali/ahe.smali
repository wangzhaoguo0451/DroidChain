.class public final Lahe;
.super Ljava/lang/Object;
.source "DiskBasedCache.java"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:J

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lagi;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lahe;->b:Ljava/lang/String;

    .line 368
    iget-object v0, p2, Lagi;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lahe;->a:J

    .line 369
    iget-object v0, p2, Lagi;->b:Ljava/lang/String;

    iput-object v0, p0, Lahe;->c:Ljava/lang/String;

    .line 370
    iget-wide v0, p2, Lagi;->c:J

    iput-wide v0, p0, Lahe;->d:J

    .line 371
    iget-wide v0, p2, Lagi;->d:J

    iput-wide v0, p0, Lahe;->e:J

    .line 372
    iget-wide v0, p2, Lagi;->e:J

    iput-wide v0, p0, Lahe;->f:J

    .line 373
    iget-object v0, p2, Lagi;->f:Ljava/util/Map;

    iput-object v0, p0, Lahe;->g:Ljava/util/Map;

    .line 374
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lahe;
    .locals 4
    .parameter

    .prologue
    .line 382
    new-instance v0, Lahe;

    invoke-direct {v0}, Lahe;-><init>()V

    .line 383
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 384
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v2

    .line 385
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 387
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 389
    :cond_0
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lahe;->b:Ljava/lang/String;

    .line 390
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lahe;->c:Ljava/lang/String;

    .line 391
    iget-object v2, v0, Lahe;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    const/4 v2, 0x0

    iput-object v2, v0, Lahe;->c:Ljava/lang/String;

    .line 394
    :cond_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lahe;->d:J

    .line 395
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lahe;->e:J

    .line 396
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lahe;->f:J

    .line 397
    invoke-static {v1}, Lahe;->a(Ljava/io/ObjectInputStream;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lahe;->g:Ljava/util/Map;

    .line 398
    return-object v0
.end method

.method private static a(Ljava/io/ObjectInputStream;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 459
    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 462
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 463
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 465
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 459
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0

    .line 467
    :cond_1
    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/ObjectOutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 441
    if-eqz p0, :cond_0

    .line 442
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 443
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 444
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 445
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 450
    :cond_1
    return-void
.end method


# virtual methods
.method public final a([B)Lagi;
    .locals 4
    .parameter

    .prologue
    .line 405
    new-instance v0, Lagi;

    invoke-direct {v0}, Lagi;-><init>()V

    .line 406
    iput-object p1, v0, Lagi;->a:[B

    .line 407
    iget-object v1, p0, Lahe;->c:Ljava/lang/String;

    iput-object v1, v0, Lagi;->b:Ljava/lang/String;

    .line 408
    iget-wide v2, p0, Lahe;->d:J

    iput-wide v2, v0, Lagi;->c:J

    .line 409
    iget-wide v2, p0, Lahe;->e:J

    iput-wide v2, v0, Lagi;->d:J

    .line 410
    iget-wide v2, p0, Lahe;->f:J

    iput-wide v2, v0, Lagi;->e:J

    .line 411
    iget-object v1, p0, Lahe;->g:Ljava/util/Map;

    iput-object v1, v0, Lagi;->f:Ljava/util/Map;

    .line 412
    return-object v0
.end method

.method public final a(Ljava/io/OutputStream;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 420
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 421
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 422
    iget-object v2, p0, Lahe;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 423
    iget-object v2, p0, Lahe;->c:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 424
    iget-wide v4, p0, Lahe;->d:J

    invoke-virtual {v3, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 425
    iget-wide v4, p0, Lahe;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 426
    iget-wide v4, p0, Lahe;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 427
    iget-object v2, p0, Lahe;->g:Ljava/util/Map;

    invoke-static {v2, v3}, Lahe;->a(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 428
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 432
    :goto_1
    return v0

    .line 423
    :cond_0
    iget-object v2, p0, Lahe;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v2

    .line 431
    const-string v3, "%s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lagx;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 432
    goto :goto_1
.end method
