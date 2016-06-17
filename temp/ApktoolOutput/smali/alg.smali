.class final Lalg;
.super Ljava/lang/Object;
.source "FirstAvailableDataSourceSupplier.java"

# interfaces
.implements Lald;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lald",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lalf;


# direct methods
.method private constructor <init>(Lalf;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lalg;->a:Lalf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lalf;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lalg;-><init>(Lalf;)V

    return-void
.end method


# virtual methods
.method public final a(Lalb;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalb",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-virtual {p1}, Lalb;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    iget-object v2, p0, Lalg;->a:Lalf;

    invoke-virtual {p1}, Lalb;->c()Z

    move-result v0

    monitor-enter v2

    :try_start_0
    iget-object v3, v2, Lalf;->a:Lalb;

    if-ne p1, v3, :cond_0

    iget-object v3, v2, Lalf;->b:Lalb;

    if-ne p1, v3, :cond_2

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v2}, Lalf;->h()Lalb;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p1}, Lalb;->c()Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Lalf;->a(Ljava/lang/Object;Z)Z

    .line 226
    :cond_1
    :goto_1
    return-void

    .line 222
    :cond_2
    :try_start_1
    iget-object v3, v2, Lalf;->b:Lalb;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, v2, Lalf;->b:Lalb;

    iput-object p1, v2, Lalf;->b:Lalb;

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lalf;->a(Lalb;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 223
    :cond_4
    invoke-virtual {p1}, Lalb;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lalg;->a:Lalf;

    invoke-static {v0, p1}, Lalf;->a(Lalf;Lalb;)V

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public final b(Lalb;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalb",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lalg;->a:Lalf;

    invoke-static {v0, p1}, Lalf;->a(Lalf;Lalb;)V

    .line 213
    return-void
.end method

.method public final c(Lalb;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalb",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lalg;->a:Lalf;

    invoke-virtual {v0}, Lalf;->e()F

    move-result v0

    .line 231
    iget-object v1, p0, Lalg;->a:Lalf;

    invoke-virtual {p1}, Lalb;->e()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Lalf;->a(F)Z

    .line 232
    return-void
.end method
