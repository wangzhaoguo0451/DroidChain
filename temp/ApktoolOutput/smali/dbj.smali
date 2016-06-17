.class public final Ldbj;
.super Ljava/lang/Object;
.source "ImageMemoryCache.java"

# interfaces
.implements Lahp;
.implements Ldbg;


# instance fields
.field public a:Ldz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldz",
            "<",
            "Ljava/lang/String;",
            "Ldbm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .parameter

    .prologue
    const-wide/32 v2, 0xea60

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ldbk;

    invoke-direct {v0, p1}, Ldbk;-><init>(I)V

    iput-object v0, p0, Ldbj;->a:Ldz;

    .line 28
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Ldbl;

    invoke-direct {v1, p0}, Ldbl;-><init>(Ldbj;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Ldbj;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Ldbj;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 85
    return-void
.end method

.method public final b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Ldbj;->a:Ldz;

    invoke-virtual {v0, p1}, Ldz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbm;

    .line 47
    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Ldbm;->b:J

    .line 49
    iget-object v0, v0, Ldbm;->a:Landroid/graphics/Bitmap;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 56
    new-instance v0, Ldbm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldbm;-><init>(B)V

    .line 57
    iput-object p2, v0, Ldbm;->a:Landroid/graphics/Bitmap;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Ldbm;->b:J

    .line 59
    iget-object v1, p0, Ldbj;->a:Ldz;

    invoke-virtual {v1, p1, v0}, Ldz;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method
