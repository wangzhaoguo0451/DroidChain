.class public final Lfay;
.super Landroid/widget/BaseAdapter;
.source "SubActionButton.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/button/views/SubActionButton;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/button/views/SubActionButton;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lfay;->a:Lcom/wandoujia/p4/button/views/SubActionButton;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private a(I)Lfaz;
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lfay;->a:Lcom/wandoujia/p4/button/views/SubActionButton;

    invoke-static {v0}, Lcom/wandoujia/p4/button/views/SubActionButton;->b(Lcom/wandoujia/p4/button/views/SubActionButton;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfaz;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lfay;->a:Lcom/wandoujia/p4/button/views/SubActionButton;

    invoke-static {v0}, Lcom/wandoujia/p4/button/views/SubActionButton;->b(Lcom/wandoujia/p4/button/views/SubActionButton;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfay;->a:Lcom/wandoujia/p4/button/views/SubActionButton;

    invoke-static {v0}, Lcom/wandoujia/p4/button/views/SubActionButton;->b(Lcom/wandoujia/p4/button/views/SubActionButton;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lfay;->a(I)Lfaz;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 193
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 199
    if-nez p2, :cond_0

    .line 200
    const v1, 0x7f0301cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 203
    :goto_0
    invoke-direct {p0, p1}, Lfay;->a(I)Lfaz;

    move-result-object v2

    move-object v0, v1

    .line 204
    check-cast v0, Landroid/widget/TextView;

    .line 205
    iget-object v2, v2, Lfaz;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method
