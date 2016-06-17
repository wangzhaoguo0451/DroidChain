.class public final Ldlf;
.super Lhic;
.source "CoverPresenter.java"


# instance fields
.field private final a:Z

.field private b:Lhma;

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lhic;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldlf;->a:Z

    .line 23
    const v0, 0x7f0a0042

    iput v0, p0, Ldlf;->c:I

    .line 24
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lhic;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldlf;->a:Z

    .line 28
    const v0, 0x7f0a0042

    iput v0, p0, Ldlf;->c:I

    .line 29
    return-void
.end method

.method public constructor <init>(C)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lhic;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldlf;->a:Z

    .line 33
    const v0, 0x7f020246

    iput v0, p0, Ldlf;->c:I

    .line 34
    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 44
    iget-object v0, p0, Ldlf;->b:Lhma;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lhma;

    iget-boolean v1, p0, Ldlf;->a:Z

    invoke-direct {v0, v1}, Lhma;-><init>(Z)V

    iput-object v0, p0, Ldlf;->b:Lhma;

    .line 47
    :cond_0
    invoke-virtual {p0}, Ldlf;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 48
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/Image;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    :cond_1
    iget-object v1, p0, Ldlf;->b:Lhma;

    const/4 v2, 0x0

    iget v3, p0, Ldlf;->c:I

    invoke-virtual {v1, v0, v2, v3}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_2
    iget-object v2, p0, Ldlf;->b:Lhma;

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/Image;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    iget v3, p0, Ldlf;->c:I

    invoke-virtual {v2, v0, v1, v3}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_0
.end method
