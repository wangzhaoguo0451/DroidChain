.class public Lata;
.super Ljava/lang/Object;
.source "FetchState.java"


# instance fields
.field final d:Lask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lask",
            "<",
            "Laqx;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Laue;


# direct methods
.method public constructor <init>(Lask;Laue;)V
    .locals 0
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
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lata;->d:Lask;

    .line 31
    iput-object p2, p0, Lata;->e:Laue;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lata;->e:Laue;

    invoke-interface {v0}, Laue;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Laug;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lata;->e:Laue;

    invoke-interface {v0}, Laue;->c()Laug;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lata;->e:Laue;

    invoke-interface {v0}, Laue;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    return-object v0
.end method
