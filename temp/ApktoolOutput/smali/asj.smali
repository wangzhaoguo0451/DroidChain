.class final Lasj;
.super Lass;
.source "BranchOnSeparateImagesProducer.java"


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
.field private a:Laue;

.field private synthetic b:Lasi;


# direct methods
.method private constructor <init>(Lasi;Lask;Laue;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<",
            "Laqx;",
            ">;",
            "Laue;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lasj;->b:Lasi;

    .line 47
    invoke-direct {p0, p2}, Lass;-><init>(Lask;)V

    .line 48
    iput-object p3, p0, Lasj;->a:Laue;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lasi;Lask;Laue;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lasj;-><init>(Lasi;Lask;Laue;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    check-cast p1, Laqx;

    iget-object v2, p0, Lasj;->a:Laue;

    invoke-interface {v2}, Laue;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    if-eqz p1, :cond_2

    iget v3, p1, Laqx;->d:I

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()I

    move-result v4

    if-lt v3, v4, :cond_2

    iget v3, p1, Laqx;->e:I

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/request/ImageRequest;->b()I

    move-result v2

    if-lt v3, v2, :cond_2

    move v2, v0

    :goto_0
    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lass;->d:Lask;

    if-eqz p2, :cond_3

    :goto_1
    invoke-virtual {v3, p1, v0}, Lask;->b(Ljava/lang/Object;Z)V

    :cond_0
    if-eqz p2, :cond_1

    if-nez v2, :cond_1

    iget-object v0, p0, Lasj;->b:Lasi;

    iget-object v0, v0, Lasi;->a:Laud;

    iget-object v1, p0, Lass;->d:Lask;

    iget-object v2, p0, Lasj;->a:Laue;

    invoke-interface {v0, v1, v2}, Laud;->a(Lask;Laue;)V

    :cond_1
    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected final a(Ljava/lang/Throwable;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lasj;->b:Lasi;

    iget-object v0, v0, Lasi;->a:Laud;

    iget-object v1, p0, Lass;->d:Lask;

    iget-object v2, p0, Lasj;->a:Laue;

    invoke-interface {v0, v1, v2}, Laud;->a(Lask;Laue;)V

    .line 66
    return-void
.end method
