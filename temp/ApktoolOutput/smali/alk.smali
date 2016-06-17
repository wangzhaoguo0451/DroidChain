.class public final Lalk;
.super Lalt;
.source "PipelineDraweeControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lalt",
        "<",
        "Lalk;",
        "Lcom/facebook/imagepipeline/request/ImageRequest;",
        "Lakk",
        "<",
        "Laqv;",
        ">;",
        "Laqy;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lapw;

.field private final d:Lalm;


# direct methods
.method public constructor <init>(Lalm;Lapw;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalm;",
            "Lapw;",
            "Ljava/util/Set",
            "<",
            "Lalx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lalt;-><init>(Ljava/util/Set;)V

    .line 46
    iput-object p2, p0, Lalk;->c:Lapw;

    .line 47
    iput-object p1, p0, Lalk;->d:Lalm;

    .line 48
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Z)Lalb;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    check-cast p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lalk;->c:Lapw;

    invoke-virtual {v0, p1, p2}, Lapw;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lalb;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lalk;->c:Lapw;

    invoke-virtual {v0, p1, p2}, Lapw;->b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lalb;

    move-result-object v0

    goto :goto_0
.end method

.method protected final bridge synthetic a()Lalt;
    .locals 0

    .prologue
    .line 31
    return-object p0
.end method

.method public final bridge synthetic a(Landroid/net/Uri;)Lamw;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->a(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    invoke-super {p0, v0}, Lalt;->a(Ljava/lang/Object;)Lalt;

    move-result-object v0

    check-cast v0, Lalk;

    return-object v0
.end method

.method protected final synthetic b()Lalq;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 31
    iget-object v0, p0, Lalt;->b:Lamt;

    instance-of v1, v0, Lalj;

    if-eqz v1, :cond_0

    check-cast v0, Lalj;

    invoke-virtual {p0}, Lalk;->f()Lakd;

    move-result-object v1

    invoke-static {}, Lalk;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v7}, Lalj;->a(Lakd;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v4, p0, Lalk;->d:Lalm;

    invoke-virtual {p0}, Lalk;->f()Lakd;

    move-result-object v5

    invoke-static {}, Lalk;->e()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lalj;

    iget-object v1, v4, Lalm;->a:Landroid/content/res/Resources;

    iget-object v2, v4, Lalm;->b:Laln;

    iget-object v3, v4, Lalm;->c:Lanr;

    iget-object v4, v4, Lalm;->d:Ljava/util/concurrent/Executor;

    invoke-direct/range {v0 .. v7}, Lalj;-><init>(Landroid/content/res/Resources;Laln;Lanr;Ljava/util/concurrent/Executor;Lakd;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
