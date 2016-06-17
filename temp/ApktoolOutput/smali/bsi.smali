.class public final Lbsi;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static a:Ljava/util/regex/Pattern;

.field private static final n:Ljava/io/OutputStream;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private f:J

.field private g:J

.field private h:Ljava/io/Writer;

.field private final i:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lbsn;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:J

.field private l:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final m:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbsi;->a:Ljava/util/regex/Pattern;

    .line 713
    new-instance v0, Lbsk;

    invoke-direct {v0}, Lbsk;-><init>()V

    sput-object v0, Lbsi;->n:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-wide v4, p0, Lbsi;->g:J

    .line 150
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f40

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lbsi;->i:Ljava/util/LinkedHashMap;

    .line 159
    iput-wide v4, p0, Lbsi;->k:J

    .line 162
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lbsi;->l:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 164
    new-instance v0, Lbsj;

    invoke-direct {v0, p0}, Lbsj;-><init>(Lbsi;)V

    iput-object v0, p0, Lbsi;->m:Ljava/util/concurrent/Callable;

    .line 181
    iput-object p1, p0, Lbsi;->b:Ljava/io/File;

    .line 182
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lbsi;->c:Ljava/io/File;

    .line 184
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lbsi;->d:Ljava/io/File;

    .line 185
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lbsi;->e:Ljava/io/File;

    .line 186
    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lbsi;->f:J

    .line 188
    return-void
.end method

.method public static a(Ljava/io/File;)Lbsi;
    .locals 6
    .parameter

    .prologue
    .line 201
    const-wide/32 v0, 0xa00000

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 221
    :cond_1
    :goto_0
    new-instance v0, Lbsi;

    invoke-direct {v0, p0}, Lbsi;-><init>(Ljava/io/File;)V

    .line 222
    iget-object v1, v0, Lbsi;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 224
    :try_start_0
    invoke-direct {v0}, Lbsi;->e()V

    .line 225
    invoke-direct {v0}, Lbsi;->f()V

    .line 226
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lbsi;->c:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lbsr;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lbsi;->h:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_1
    return-object v0

    .line 216
    :cond_2
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lbsi;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 230
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DiskLruCache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Lbsi;->b()V

    .line 241
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 242
    new-instance v0, Lbsi;

    invoke-direct {v0, p0}, Lbsi;-><init>(Ljava/io/File;)V

    .line 243
    invoke-direct {v0}, Lbsi;->g()V

    goto :goto_1
.end method

.method static synthetic a(Lbsi;)Ljava/io/Writer;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lbsi;->h:Ljava/io/Writer;

    return-object v0
.end method

.method public static synthetic a(Lbsi;Lbsl;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lbsi;->a(Lbsl;Z)V

    return-void
.end method

.method private declared-synchronized a(Lbsl;Z)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 509
    monitor-enter p0

    :try_start_0
    iget-object v2, p1, Lbsl;->a:Lbsn;

    .line 510
    iget-object v1, v2, Lbsn;->d:Lbsl;

    if-eq v1, p1, :cond_0

    .line 511
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 515
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    iget-boolean v1, v2, Lbsn;->c:Z

    if-nez v1, :cond_4

    move v1, v0

    .line 516
    :goto_0
    if-gtz v1, :cond_4

    .line 517
    iget-object v3, p1, Lbsl;->b:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-nez v3, :cond_1

    .line 518
    invoke-virtual {p1}, Lbsl;->b()V

    .line 519
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Newly created entry didn\'t create value for index 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbsn;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 522
    invoke-virtual {p1}, Lbsl;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 516
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    :cond_4
    :goto_2
    if-gtz v0, :cond_7

    .line 529
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v2, v1}, Lbsn;->b(I)Ljava/io/File;

    move-result-object v1

    .line 530
    if-eqz p2, :cond_6

    .line 531
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 532
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbsn;->a(I)Ljava/io/File;

    move-result-object v3

    .line 533
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 534
    iget-object v1, v2, Lbsn;->b:[J

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    .line 535
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 536
    iget-object v1, v2, Lbsn;->b:[J

    const/4 v3, 0x0

    aput-wide v6, v1, v3

    .line 537
    iget-wide v8, p0, Lbsi;->g:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lbsi;->g:J

    .line 528
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 540
    :cond_6
    invoke-static {v1}, Lbsi;->b(Ljava/io/File;)V

    goto :goto_3

    .line 544
    :cond_7
    iget v0, p0, Lbsi;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsi;->j:I

    .line 545
    const/4 v0, 0x0

    iput-object v0, v2, Lbsn;->d:Lbsl;

    .line 546
    iget-boolean v0, v2, Lbsn;->c:Z

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, v2, Lbsn;->c:Z

    .line 548
    iget-object v0, p0, Lbsi;->h:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CLEAN "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lbsn;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lbsn;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 549
    if-eqz p2, :cond_8

    .line 550
    iget-wide v0, p0, Lbsi;->k:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lbsi;->k:J

    iput-wide v0, v2, Lbsn;->e:J

    .line 556
    :cond_8
    :goto_4
    iget-object v0, p0, Lbsi;->h:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 558
    iget-wide v0, p0, Lbsi;->g:J

    iget-wide v2, p0, Lbsi;->f:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lbsi;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    :cond_9
    iget-object v0, p0, Lbsi;->l:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lbsi;->m:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 553
    :cond_a
    iget-object v0, p0, Lbsi;->i:Ljava/util/LinkedHashMap;

    iget-object v1, v2, Lbsn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v0, p0, Lbsi;->h:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "REMOVE "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lbsn;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    if-eqz p2, :cond_0

    .line 392
    invoke-static {p1}, Lbsi;->b(Ljava/io/File;)V

    .line 394
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 397
    :cond_1
    return-void
.end method

.method static synthetic b(Lbsi;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lbsi;->j()V

    return-void
.end method

.method private static b(Ljava/io/File;)V
    .locals 1
    .parameter

    .prologue
    .line 385
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 388
    :cond_0
    return-void
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic c(Lbsi;)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lbsi;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lbsi;->n:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic d(Lbsi;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Lbsi;->g()V

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 658
    sget-object v0, Lbsi;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_0
    return-void
.end method

.method static synthetic e(Lbsi;)I
    .locals 1
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lbsi;->j:I

    return v0
.end method

.method private e()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v0, 0x0

    const/4 v8, -0x1

    .line 248
    new-instance v3, Lbsp;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lbsi;->c:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lbsr;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v2}, Lbsp;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 250
    :try_start_0
    invoke-virtual {v3}, Lbsp;->a()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {v3}, Lbsp;->a()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-virtual {v3}, Lbsp;->a()Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-virtual {v3}, Lbsp;->a()Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-virtual {v3}, Lbsp;->a()Ljava/lang/String;

    move-result-object v6

    .line 255
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 260
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "unexpected journal header: ["

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :catchall_0
    move-exception v0

    invoke-static {v3}, Lbsr;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    move v1, v0

    .line 267
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lbsp;->a()Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v8, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "unexpected journal line: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 270
    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lbsi;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lbsi;->j:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    invoke-static {v3}, Lbsr;->a(Ljava/io/Closeable;)V

    .line 276
    return-void

    .line 267
    :cond_2
    add-int/lit8 v0, v5, 0x1

    const/16 v2, 0x20

    :try_start_3
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    if-ne v5, v2, :cond_9

    const-string v2, "REMOVE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lbsi;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 271
    goto :goto_0

    .line 267
    :cond_4
    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_2
    iget-object v0, p0, Lbsi;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsn;

    if-nez v0, :cond_5

    new-instance v0, Lbsn;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v2, v7}, Lbsn;-><init>(Lbsi;Ljava/lang/String;B)V

    iget-object v7, p0, Lbsi;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eq v6, v8, :cond_6

    if-ne v5, v9, :cond_6

    const-string v2, "CLEAN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    iput-boolean v4, v0, Lbsn;->c:Z

    const/4 v4, 0x0

    iput-object v4, v0, Lbsn;->d:Lbsl;

    invoke-virtual {v0, v2}, Lbsn;->a([Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-ne v6, v8, :cond_7

    if-ne v5, v9, :cond_7

    const-string v2, "DIRTY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lbsl;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v4}, Lbsl;-><init>(Lbsi;Lbsn;B)V

    iput-object v2, v0, Lbsn;->d:Lbsl;

    goto :goto_1

    :cond_7
    if-ne v6, v8, :cond_8

    const/4 v0, 0x4

    if-ne v5, v0, :cond_8

    const-string v0, "READ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "unexpected journal line: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_9
    move-object v2, v0

    goto :goto_2
.end method

.method static synthetic f(Lbsi;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lbsi;->b:Ljava/io/File;

    return-object v0
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lbsi;->d:Ljava/io/File;

    invoke-static {v0}, Lbsi;->b(Ljava/io/File;)V

    .line 324
    iget-object v0, p0, Lbsi;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsn;

    .line 326
    iget-object v1, v0, Lbsn;->d:Lbsl;

    if-nez v1, :cond_1

    move v1, v2

    .line 327
    :goto_1
    if-gtz v1, :cond_0

    .line 328
    iget-wide v4, p0, Lbsi;->g:J

    iget-object v6, v0, Lbsn;->b:[J

    aget-wide v6, v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lbsi;->g:J

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 331
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lbsn;->d:Lbsl;

    move v1, v2

    .line 332
    :goto_2
    if-gtz v1, :cond_2

    .line 333
    invoke-virtual {v0, v2}, Lbsn;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lbsi;->b(Ljava/io/File;)V

    .line 334
    invoke-virtual {v0, v2}, Lbsn;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lbsi;->b(Ljava/io/File;)V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 336
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 339
    :cond_3
    return-void
.end method

.method private declared-synchronized g()V
    .locals 5

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbsi;->h:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lbsi;->h:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 350
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lbsi;->d:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lbsr;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 353
    :try_start_1
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 354
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 355
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 356
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 357
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lbsi;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsn;

    .line 364
    iget-object v3, v0, Lbsn;->d:Lbsl;

    if-eqz v3, :cond_1

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lbsn;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 371
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 346
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 367
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lbsn;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lbsn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 371
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 374
    iget-object v0, p0, Lbsi;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    iget-object v0, p0, Lbsi;->c:Ljava/io/File;

    iget-object v1, p0, Lbsi;->e:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lbsi;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 377
    :cond_3
    iget-object v0, p0, Lbsi;->d:Ljava/io/File;

    iget-object v1, p0, Lbsi;->c:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lbsi;->a(Ljava/io/File;Ljava/io/File;Z)V

    .line 378
    iget-object v0, p0, Lbsi;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 380
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lbsi;->c:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lbsr;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lbsi;->h:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 382
    monitor-exit p0

    return-void
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 568
    iget v0, p0, Lbsi;->j:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lbsi;->j:I

    iget-object v1, p0, Lbsi;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lbsi;->h:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 614
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_0
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 641
    :goto_0
    iget-wide v0, p0, Lbsi;->g:J

    iget-wide v2, p0, Lbsi;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 642
    iget-object v0, p0, Lbsi;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 643
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbsi;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 645
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()J
    .locals 2

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lbsi;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Lbso;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 405
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbsi;->i()V

    .line 406
    invoke-static {p1}, Lbsi;->d(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lbsi;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    if-nez v0, :cond_0

    move-object v0, v1

    .line 442
    :goto_0
    monitor-exit p0

    return-object v0

    .line 412
    :cond_0
    :try_start_1
    iget-boolean v3, v0, Lbsn;->c:Z

    if-nez v3, :cond_1

    move-object v0, v1

    .line 413
    goto :goto_0

    .line 419
    :cond_1
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v2

    .line 421
    :goto_1
    if-gtz v3, :cond_3

    .line 422
    const/4 v5, 0x0

    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lbsn;->a(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v6, v4, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 421
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 426
    :catch_0
    move-exception v0

    move v0, v2

    :goto_2
    if-gtz v0, :cond_2

    .line 427
    const/4 v2, 0x0

    :try_start_3
    aget-object v2, v4, v2

    if-eqz v2, :cond_2

    .line 428
    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-static {v2}, Lbsr;->a(Ljava/io/Closeable;)V

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 433
    goto :goto_0

    .line 436
    :cond_3
    iget v0, p0, Lbsi;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsi;->j:I

    .line 437
    iget-object v0, p0, Lbsi;->h:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "READ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 438
    invoke-direct {p0}, Lbsi;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 439
    iget-object v0, p0, Lbsi;->l:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lbsi;->m:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 442
    :cond_4
    new-instance v0, Lbso;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lbso;-><init>([Ljava/io/InputStream;B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Lbsl;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    .line 454
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbsi;->i()V

    .line 455
    invoke-static {p1}, Lbsi;->d(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lbsi;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsn;

    .line 457
    cmp-long v2, v4, v4

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lbsn;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 474
    :goto_0
    monitor-exit p0

    return-object v0

    .line 461
    :cond_1
    if-nez v0, :cond_2

    .line 462
    :try_start_1
    new-instance v0, Lbsn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lbsn;-><init>(Lbsi;Ljava/lang/String;B)V

    .line 463
    iget-object v1, p0, Lbsi;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 468
    :goto_1
    new-instance v0, Lbsl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lbsl;-><init>(Lbsi;Lbsn;B)V

    .line 469
    iput-object v0, v1, Lbsn;->d:Lbsl;

    .line 472
    iget-object v1, p0, Lbsi;->h:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DIRTY "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lbsi;->h:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 464
    :cond_2
    :try_start_2
    iget-object v2, v0, Lbsn;->d:Lbsl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 465
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0}, Lbsi;->close()V

    .line 654
    iget-object v0, p0, Lbsi;->b:Ljava/io/File;

    invoke-static {v0}, Lbsr;->a(Ljava/io/File;)V

    .line 655
    return-void
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 580
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lbsi;->i()V

    .line 581
    invoke-static {p1}, Lbsi;->d(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lbsi;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsn;

    .line 583
    if-eqz v0, :cond_0

    iget-object v2, v0, Lbsn;->d:Lbsl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 604
    :goto_0
    monitor-exit p0

    return v0

    .line 592
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lbsi;->g:J

    iget-object v4, v0, Lbsn;->b:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lbsi;->g:J

    .line 593
    iget-object v2, v0, Lbsn;->b:[J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 587
    add-int/lit8 v1, v1, 0x1

    :cond_2
    if-gtz v1, :cond_3

    .line 588
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbsn;->a(I)Ljava/io/File;

    move-result-object v2

    .line 589
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 590
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "failed to delete "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 596
    :cond_3
    :try_start_2
    iget v0, p0, Lbsi;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsi;->j:I

    .line 597
    iget-object v0, p0, Lbsi;->h:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "REMOVE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 598
    iget-object v0, p0, Lbsi;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    invoke-direct {p0}, Lbsi;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 601
    iget-object v0, p0, Lbsi;->l:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lbsi;->m:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 604
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final declared-synchronized close()V
    .locals 3

    .prologue
    .line 627
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbsi;->h:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 638
    :goto_0
    monitor-exit p0

    return-void

    .line 630
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbsi;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsn;

    .line 631
    iget-object v2, v0, Lbsn;->d:Lbsl;

    if-eqz v2, :cond_1

    .line 632
    iget-object v0, v0, Lbsn;->d:Lbsl;

    invoke-virtual {v0}, Lbsl;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 635
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lbsi;->j()V

    .line 636
    iget-object v0, p0, Lbsi;->h:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lbsi;->h:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
