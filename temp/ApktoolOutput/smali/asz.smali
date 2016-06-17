.class final Lasz;
.super Lass;
.source "EncodedMemoryCacheProducer.java"


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
.field private synthetic a:Laip;

.field private synthetic b:Lasy;


# direct methods
.method constructor <init>(Lasy;Lask;Laip;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lasz;->b:Lasy;

    iput-object p3, p0, Lasz;->a:Laip;

    invoke-direct {p0, p2}, Lass;-><init>(Lask;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 83
    check-cast p1, Laqx;

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lass;->d:Lask;

    invoke-virtual {v0, p1, p2}, Lask;->b(Ljava/lang/Object;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Laqx;->a:Lakk;

    invoke-static {v0}, Lakk;->b(Lakk;)Lakk;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v0, p0, Lasz;->b:Lasy;

    iget-object v0, v0, Lasy;->a:Lapm;

    iget-object v2, p0, Lasz;->a:Laip;

    invoke-interface {v0, v2, v1}, Lapm;->a(Ljava/lang/Object;Lakk;)Lakk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-static {v1}, Lakk;->c(Lakk;)V

    if-eqz v2, :cond_2

    :try_start_1
    new-instance v1, Laqx;

    invoke-direct {v1, v2}, Laqx;-><init>(Lakk;)V

    invoke-virtual {v1, p1}, Laqx;->b(Laqx;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lakk;->c(Lakk;)V

    :try_start_2
    iget-object v0, p0, Lass;->d:Lask;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Lask;->b(F)V

    iget-object v0, p0, Lass;->d:Lask;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lask;->b(Ljava/lang/Object;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v1}, Laqx;->d(Laqx;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lakk;->c(Lakk;)V

    throw v0

    :catchall_1
    move-exception v0

    invoke-static {v2}, Lakk;->c(Lakk;)V

    throw v0

    :catchall_2
    move-exception v0

    invoke-static {v1}, Laqx;->d(Laqx;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lass;->d:Lask;

    invoke-virtual {v0, p1, v3}, Lask;->b(Ljava/lang/Object;Z)V

    goto :goto_0
.end method
