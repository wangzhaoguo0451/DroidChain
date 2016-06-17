.class public final Lddo;
.super Ljava/lang/Object;
.source "CategoryOverallProcessor.java"

# interfaces
.implements Leqx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leqx",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lddn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lddn;

    invoke-direct {v0}, Lddn;-><init>()V

    iput-object v0, p0, Lddo;->a:Lddn;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 15
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v3, p0, Lddo;->a:Lddn;

    iget-object v4, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-virtual {v3, v4}, Lddn;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wandoujia/ripple_framework/model/Model;->a(Ljava/util/List;)V

    .line 19
    iget-object v3, p0, Lddo;->a:Lddn;

    iget-object v4, v1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-virtual {v3, v4}, Lddn;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wandoujia/ripple_framework/model/Model;->a(Ljava/util/List;)V

    .line 21
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-object v2
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method
