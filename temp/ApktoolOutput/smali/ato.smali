.class final Lato;
.super Laum;
.source "LocalFetchProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laum",
        "<",
        "Laqx;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/imagepipeline/request/ImageRequest;

.field private synthetic b:Latn;


# direct methods
.method constructor <init>(Latn;Lask;Laug;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lato;->b:Latn;

    iput-object p6, p0, Lato;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-direct {p0, p2, p3, p4, p5}, Laum;-><init>(Lask;Laug;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    check-cast p1, Laqx;

    invoke-static {p1}, Laqx;->d(Laqx;)V

    return-void
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lato;->b:Latn;

    iget-object v1, p0, Lato;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    invoke-virtual {v0, v1}, Latn;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)Laqx;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Laqx;->c()V

    goto :goto_0
.end method
