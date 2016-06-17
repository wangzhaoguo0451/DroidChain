.class public abstract Lerl;
.super Lerj;
.source "NirvanaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lerj",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lerx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lerx",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lerm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lerj;-><init>()V

    .line 28
    new-instance v0, Lerx;

    invoke-direct {v0}, Lerx;-><init>()V

    iput-object v0, p0, Lerl;->b:Lerx;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lerl;->d:Ljava/util/Set;

    .line 30
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/ViewGroup;Ljava/lang/Object;)Lerf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "TT;)",
            "Lerf;"
        }
    .end annotation
.end method

.method protected final synthetic a(ILandroid/view/ViewGroup;)Lerk;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lerl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lerl;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)Lerf;

    move-result-object v0

    iget-object v1, v0, Lerf;->b:Landroid/view/View;

    iget-object v2, p0, Lerl;->b:Lerx;

    invoke-static {v1, v2}, Lery;->a(Landroid/view/View;Lerx;)V

    new-instance v1, Lerm;

    invoke-direct {v1, v0}, Lerm;-><init>(Lerf;)V

    return-object v1
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Lerj;->a()V

    .line 50
    const-string v0, "SubList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroy view holders "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lerl;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lerl;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lerm;

    .line 52
    if-eqz v0, :cond_1

    iget-object v2, v0, Lerm;->c:Lerf;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lerm;->c:Lerf;

    invoke-virtual {v0}, Lerf;->a()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_2

    const-string v0, "holder"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "holder.presenter"

    goto :goto_1

    .line 54
    :cond_3
    iget-object v0, p0, Lerl;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 55
    return-void
.end method

.method protected final a(ILerk;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lerl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, p2

    .line 43
    check-cast v0, Lerm;

    iget-object v0, v0, Lerm;->c:Lerf;

    invoke-virtual {v0, v1}, Lerf;->a(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lerl;->d:Ljava/util/Set;

    check-cast p2, Lerm;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method
