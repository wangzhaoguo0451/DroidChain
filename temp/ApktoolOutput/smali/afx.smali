.class public final Lafx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ladk;

.field public c:Ladw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafx;->a:Z

    .line 27
    new-instance v0, Ladk;

    invoke-direct {v0}, Ladk;-><init>()V

    iput-object v0, p0, Lafx;->b:Ladk;

    .line 28
    return-void
.end method

.method static synthetic a(Ladw;Ladk;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;JJLacj;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    iget-boolean v3, p1, Ladk;->a:Z

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p6

    cmp-long v3, v4, p8

    if-gez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Ld;->b()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x9c4

    sub-long v0, v2, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p1

    move-object v1, p5

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Ladk;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILacj;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ld;->e()V

    move-object v2, v0

    move-wide v0, v6

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Ladw;->b(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method
