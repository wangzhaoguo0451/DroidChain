.class final Lasu;
.super Ljava/lang/Object;
.source "DiskCacheProducer.java"

# interfaces
.implements Lwc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwc",
        "<",
        "Laqx;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Laug;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lask;

.field private synthetic d:Laox;

.field private synthetic e:Laip;

.field private synthetic f:Laue;

.field private synthetic g:Last;


# direct methods
.method constructor <init>(Last;Laug;Ljava/lang/String;Lask;Laox;Laip;Laue;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lasu;->g:Last;

    iput-object p2, p0, Lasu;->a:Laug;

    iput-object p3, p0, Lasu;->b:Ljava/lang/String;

    iput-object p4, p0, Lasu;->c:Lask;

    iput-object p5, p0, Lasu;->d:Laox;

    iput-object p6, p0, Lasu;->e:Laip;

    iput-object p7, p0, Lasu;->f:Laue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lwd;)Ljava/lang/Object;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 77
    invoke-virtual {p1}, Lwd;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lwd;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lwd;->d()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lasu;->a:Laug;

    iget-object v1, p0, Lasu;->b:Ljava/lang/String;

    const-string v2, "DiskCacheProducer"

    invoke-virtual {v0, v1, v2, v7}, Laug;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lasu;->c:Lask;

    invoke-virtual {v0}, Lask;->b()V

    :goto_0
    return-object v7

    :cond_1
    invoke-virtual {p1}, Lwd;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lasu;->a:Laug;

    iget-object v1, p0, Lasu;->b:Ljava/lang/String;

    const-string v2, "DiskCacheProducer"

    invoke-virtual {p1}, Lwd;->d()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v7}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    iget-object v0, p0, Lasu;->g:Last;

    iget-object v1, p0, Lasu;->c:Lask;

    new-instance v2, Lasw;

    iget-object v3, p0, Lasu;->c:Lask;

    iget-object v4, p0, Lasu;->d:Laox;

    iget-object v5, p0, Lasu;->e:Laip;

    invoke-direct {v2, v3, v4, v5, v6}, Lasw;-><init>(Lask;Laox;Laip;B)V

    iget-object v3, p0, Lasu;->f:Laue;

    invoke-virtual {v0, v1, v2, v3}, Last;->a(Lask;Lask;Laue;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lwd;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqx;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lasu;->a:Laug;

    iget-object v2, p0, Lasu;->b:Ljava/lang/String;

    const-string v3, "DiskCacheProducer"

    iget-object v4, p0, Lasu;->a:Laug;

    iget-object v5, p0, Lasu;->b:Ljava/lang/String;

    invoke-static {v4, v5, v8}, Last;->a(Laug;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v1, p0, Lasu;->c:Lask;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lask;->b(F)V

    iget-object v1, p0, Lasu;->c:Lask;

    invoke-virtual {v1, v0, v8}, Lask;->b(Ljava/lang/Object;Z)V

    invoke-virtual {v0}, Laqx;->close()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lasu;->a:Laug;

    iget-object v1, p0, Lasu;->b:Ljava/lang/String;

    const-string v2, "DiskCacheProducer"

    iget-object v3, p0, Lasu;->a:Laug;

    iget-object v4, p0, Lasu;->b:Ljava/lang/String;

    invoke-static {v3, v4, v6}, Last;->a(Laug;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lasu;->g:Last;

    iget-object v1, p0, Lasu;->c:Lask;

    new-instance v2, Lasw;

    iget-object v3, p0, Lasu;->c:Lask;

    iget-object v4, p0, Lasu;->d:Laox;

    iget-object v5, p0, Lasu;->e:Laip;

    invoke-direct {v2, v3, v4, v5, v6}, Lasw;-><init>(Lask;Laox;Laip;B)V

    iget-object v3, p0, Lasu;->f:Laue;

    invoke-virtual {v0, v1, v2, v3}, Last;->a(Lask;Lask;Laue;)V

    goto :goto_0
.end method
