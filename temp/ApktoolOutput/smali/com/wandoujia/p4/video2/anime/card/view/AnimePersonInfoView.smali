.class public Lcom/wandoujia/p4/video2/anime/card/view/AnimePersonInfoView;
.super Landroid/widget/RelativeLayout;
.source "AnimePersonInfoView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/wandoujia/p4/views/FlowLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/video2/anime/card/view/AnimePersonInfoView;
    .locals 1
    .parameter

    .prologue
    .line 37
    const v0, 0x7f03008a

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/anime/card/view/AnimePersonInfoView;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/video2/anime/AnimePersonType;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/video2/anime/AnimePersonType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/card/view/AnimePersonInfoView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/card/view/AnimePersonInfoView;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/anime/AnimePersonType;->getChineseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/video2/anime/card/view/AnimePersonInfoView;->b:Lcom/wandoujia/p4/views/FlowLayout;

    const v3, 0x7f030245

    invoke-static {v0, v3}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lcom/wandoujia/p4/video2/anime/card/view/AnimePersonInfoView;->b:Lcom/wandoujia/p4/views/FlowLayout;

    invoke-virtual {v1, v0}, Lcom/wandoujia/p4/views/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 43
    const v0, 0x7f0c0238

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/anime/card/view/AnimePersonInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/card/view/AnimePersonInfoView;->a:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0c0239

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/anime/card/view/AnimePersonInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/FlowLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/anime/card/view/AnimePersonInfoView;->b:Lcom/wandoujia/p4/views/FlowLayout;

    .line 45
    return-void
.end method
