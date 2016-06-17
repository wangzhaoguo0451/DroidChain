.class final Lasw;
.super Lass;
.source "DiskCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lass",
        "<",
        "Laqx;",
        "Laqx;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Laox;

.field private final b:Laip;


# direct methods
.method private constructor <init>(Lask;Laox;Laip;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laox;",
            "Laip;",
            ")V"
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lass;-><init>(Lask;)V

    .line 175
    iput-object p2, p0, Lasw;->a:Laox;

    .line 176
    iput-object p3, p0, Lasw;->b:Laip;

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Lask;Laox;Laip;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, Lasw;-><init>(Lask;Laox;Laip;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 165
    check-cast p1, Laqx;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lasw;->a:Laox;

    iget-object v2, p0, Lasw;->b:Laip;

    invoke-static {v2}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Laqx;->e(Laqx;)Z

    move-result v0

    invoke-static {v0}, Ld;->a(Z)V

    iget-object v0, v1, Laox;->c:Lapq;

    invoke-virtual {v0, v2, p1}, Lapq;->a(Laip;Laqx;)V

    invoke-static {p1}, Laqx;->a(Laqx;)Laqx;

    move-result-object v3

    :try_start_0
    iget-object v0, v1, Laox;->b:Ljava/util/concurrent/Executor;

    new-instance v4, Laoz;

    invoke-direct {v4, v1, v2, v3}, Laoz;-><init>(Laox;Laip;Laqx;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lass;->d:Lask;

    invoke-virtual {v0, p1, p2}, Lask;->b(Ljava/lang/Object;Z)V

    return-void

    :catch_0
    move-exception v0

    sget-object v4, Laox;->a:Ljava/lang/Class;

    const-string v5, "Failed to schedule disk-cache write for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v2}, Laip;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v0, v5, v6}, Lakf;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Laox;->c:Lapq;

    invoke-virtual {v0, v2, p1}, Lapq;->b(Laip;Laqx;)Z

    invoke-static {v3}, Laqx;->d(Laqx;)V

    goto :goto_0
.end method
