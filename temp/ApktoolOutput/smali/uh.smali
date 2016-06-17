.class public abstract Luh;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lux;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lui;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5009
    new-instance v0, Lui;

    invoke-direct {v0}, Lui;-><init>()V

    iput-object v0, p0, Luh;->a:Lui;

    .line 5010
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)I
    .locals 1
    .parameter

    .prologue
    .line 5101
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Lux;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public final a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5358
    iget-object v0, p0, Luh;->a:Lui;

    invoke-virtual {v0, p1, p2}, Lui;->a(II)V

    .line 5359
    return-void
.end method

.method public final a(Luj;)V
    .locals 1
    .parameter

    .prologue
    .line 5259
    iget-object v0, p0, Luh;->a:Lui;

    invoke-virtual {v0, p1}, Lui;->registerObserver(Ljava/lang/Object;)V

    .line 5260
    return-void
.end method

.method public a(Lux;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5168
    return-void
.end method

.method public abstract a(Lux;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public b(I)J
    .locals 2
    .parameter

    .prologue
    .line 5129
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5409
    iget-object v0, p0, Luh;->a:Lui;

    invoke-virtual {v0, p1, p2}, Lui;->b(II)V

    .line 5410
    return-void
.end method

.method public b(Lux;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5219
    return-void
.end method

.method public final b(Lux;I)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 5076
    iput p2, p1, Lux;->b:I

    .line 5077
    const/4 v0, 0x1

    const/16 v1, 0x207

    invoke-virtual {p1, v0, v1}, Lux;->a(II)V

    .line 5083
    const-string v0, "RV OnBindView"

    invoke-static {v0}, Ld;->a(Ljava/lang/String;)V

    .line 5084
    invoke-virtual {p0, p1, p2}, Luh;->a(Lux;I)V

    .line 5085
    invoke-static {}, Ld;->a()V

    .line 5086
    return-void
.end method

.method public final c(I)V
    .locals 2
    .parameter

    .prologue
    .line 5341
    iget-object v0, p0, Luh;->a:Lui;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lui;->a(II)V

    .line 5342
    return-void
.end method

.method public final c(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5443
    iget-object v0, p0, Luh;->a:Lui;

    invoke-virtual {v0, p1, p2}, Lui;->c(II)V

    .line 5444
    return-void
.end method

.method public c(Lux;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5231
    return-void
.end method
