.class public final Lejo;
.super Ljava/lang/Object;
.source "IncompatibleDialog.java"


# instance fields
.field public a:Lejp;

.field public b:Lejw;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lejp;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lejo;->c:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lejo;->a:Lejp;

    .line 25
    new-instance v0, Lejw;

    invoke-direct {v0, p1}, Lejw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lejo;->b:Lejw;

    .line 26
    invoke-direct {p0}, Lejo;->a()V

    .line 27
    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 30
    iget-object v0, p0, Lejo;->b:Lejw;

    iget-object v1, p0, Lejo;->a:Lejp;

    iget-object v1, v1, Lejp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lejw;->a(Ljava/lang/CharSequence;)Lejw;

    .line 31
    iget-object v0, p0, Lejo;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 32
    sget v0, Lcom/wandoujia/launcher_base/R$layout;->aa_incompatible_detail:I

    invoke-virtual {v3, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 33
    sget v0, Lcom/wandoujia/launcher_base/R$id;->incompatible_detail_layout:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 35
    iget-object v1, p0, Lejo;->a:Lejp;

    iget-object v1, v1, Lejp;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    iget-object v1, p0, Lejo;->a:Lejp;

    iget-object v1, v1, Lejp;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 37
    sget v2, Lcom/wandoujia/launcher_base/R$layout;->aa_incompatible_detail_item:I

    invoke-virtual {v3, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 39
    sget v2, Lcom/wandoujia/launcher_base/R$id;->incompatible_detail_textview:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 41
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lejo;->b:Lejw;

    invoke-virtual {v0, v4}, Lejw;->a(Landroid/view/View;)Lejw;

    .line 46
    return-void
.end method
