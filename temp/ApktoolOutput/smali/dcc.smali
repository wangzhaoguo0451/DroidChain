.class public final Ldcc;
.super Leqw;
.source "SimpleLocalDataList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leqw",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ldcj;

    invoke-direct {v0}, Ldcj;-><init>()V

    invoke-direct {p0, v0}, Leqw;-><init>(Leqx;)V

    .line 24
    iput-object p1, p0, Ldcc;->d:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldcc;->e:Ljava/util/List;

    .line 26
    if-eqz p2, :cond_0

    .line 27
    iget-object v0, p0, Ldcc;->e:Ljava/util/List;

    sget-object v1, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REFRESH:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    invoke-virtual {p0, v1, p2}, Ldcc;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Ldcc;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ldcc;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 32
    iget-object v0, p0, Ldcc;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    iget-object v0, p0, Ldcc;->e:Ljava/util/List;

    sget-object v1, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REFRESH:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    invoke-virtual {p0, v1, p1}, Ldcc;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    sget-object v0, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REFRESH:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    new-instance v1, Leqz;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v3, v3, p1}, Leqz;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {p0, v0, v1}, Ldcc;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    .line 35
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Ldcc;->e:Ljava/util/List;

    return-object v0
.end method

.method protected final d()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected final e()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
