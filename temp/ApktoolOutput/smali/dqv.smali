.class public final Ldqv;
.super Lhic;
.source "TopicFooterIconPresenter.java"


# instance fields
.field private final a:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lhic;-><init>()V

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Ldqv;->a:[I

    return-void

    :array_0
    .array-data 0x4
        0x7et 0x3t 0xct 0x7ft
        0x7ft 0x3t 0xct 0x7ft
        0x80t 0x3t 0xct 0x7ft
        0x81t 0x3t 0xct 0x7ft
    .end array-data
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 4
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v0, 0x4

    if-ge v2, v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->sub_entity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 23
    invoke-virtual {p0}, Ldqv;->e()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ldqv;->a:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 24
    new-instance v3, Lhma;

    invoke-direct {v3}, Lhma;-><init>()V

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->sub_entity:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->icon:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lhma;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 22
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method
