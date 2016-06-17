.class final Lash;
.super Lass;
.source "BitmapMemoryCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lass",
        "<",
        "Lakk",
        "<",
        "Laqv;",
        ">;",
        "Lakk",
        "<",
        "Laqv;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Laip;

.field private synthetic b:Lasg;


# direct methods
.method constructor <init>(Lasg;Lask;Laip;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lash;->b:Lasg;

    iput-object p3, p0, Lash;->a:Laip;

    invoke-direct {p0, p2}, Lass;-><init>(Lask;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 95
    check-cast p1, Lakk;

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lass;->d:Lask;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lask;->b(Ljava/lang/Object;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqv;

    invoke-virtual {v0}, Laqv;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lass;->d:Lask;

    invoke-virtual {v0, p1, p2}, Lask;->b(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_5

    iget-object v0, p0, Lash;->b:Lasg;

    iget-object v0, v0, Lasg;->a:Lapm;

    iget-object v1, p0, Lash;->a:Laip;

    invoke-interface {v0, v1}, Lapm;->a(Ljava/lang/Object;)Lakk;

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqv;

    invoke-virtual {v0}, Laqv;->g()Lara;

    move-result-object v2

    invoke-virtual {v1}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqv;

    invoke-virtual {v0}, Laqv;->g()Lara;

    move-result-object v0

    invoke-interface {v0}, Lara;->c()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Lara;->a()I

    move-result v0

    invoke-interface {v2}, Lara;->a()I

    move-result v2

    if-lt v0, v2, :cond_4

    :cond_3
    iget-object v0, p0, Lass;->d:Lask;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lask;->b(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lakk;->c(Lakk;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lakk;->c(Lakk;)V

    :cond_5
    iget-object v0, p0, Lash;->b:Lasg;

    iget-object v0, v0, Lasg;->a:Lapm;

    iget-object v1, p0, Lash;->a:Laip;

    invoke-interface {v0, v1, p1}, Lapm;->a(Ljava/lang/Object;Lakk;)Lakk;

    move-result-object v1

    if-eqz p2, :cond_6

    :try_start_1
    iget-object v0, p0, Lass;->d:Lask;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Lask;->b(F)V

    :cond_6
    iget-object v0, p0, Lass;->d:Lask;

    if-eqz v1, :cond_7

    move-object p1, v1

    :cond_7
    invoke-virtual {v0, p1, p2}, Lask;->b(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lakk;->c(Lakk;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lakk;->c(Lakk;)V

    throw v0

    :catchall_1
    move-exception v0

    invoke-static {v1}, Lakk;->c(Lakk;)V

    throw v0
.end method
