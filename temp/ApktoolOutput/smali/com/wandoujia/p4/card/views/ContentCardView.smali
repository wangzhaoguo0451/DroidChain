.class public Lcom/wandoujia/p4/card/views/ContentCardView;
.super Landroid/widget/RelativeLayout;
.source "ContentCardView.java"

# interfaces
.implements Lfcb;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/wandoujia/image/view/AsyncImageView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/ImageView;

.field public g:Lcom/wandoujia/p4/button/views/StatefulButton;

.field public h:Lcom/wandoujia/p4/button/views/SubActionButton;

.field private i:Lfca;

.field private j:Lfar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget-object v0, Lcom/wandoujia/phoenix2/R$styleable;->DownloadableProgressView:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/card/views/ContentCardView;
    .locals 1
    .parameter

    .prologue
    .line 333
    const v0, 0x7f030099

    invoke-static {p0, v0}, Lg;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/card/views/ContentCardView;

    return-object v0
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 4
    .parameter

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/wandoujia/p4/card/views/ContentCardView;->getChildCount()I

    move-result v1

    .line 345
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 346
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/card/views/ContentCardView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 350
    if-eqz p1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isLongClickable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 351
    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setPressed(Z)V

    .line 345
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_2
    return-void
.end method

.method public getButton()Lfar;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/wandoujia/p4/card/views/ContentCardView;->g:Lcom/wandoujia/p4/button/views/StatefulButton;

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/card/views/ContentCardView;->j:Lfar;

    if-nez v0, :cond_1

    .line 232
    new-instance v0, Lfcc;

    invoke-direct {v0, p0}, Lfcc;-><init>(Lcom/wandoujia/p4/card/views/ContentCardView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/card/views/ContentCardView;->j:Lfar;

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/card/views/ContentCardView;->j:Lfar;

    goto :goto_0
.end method

.method public getCardView()Lfca;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/wandoujia/p4/card/views/ContentCardView;->i:Lfca;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lfca;

    invoke-direct {v0, p0}, Lfca;-><init>(Lcom/wandoujia/p4/card/views/ContentCardView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/card/views/ContentCardView;->i:Lfca;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/card/views/ContentCardView;->i:Lfca;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 339
    return-object p0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 117
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/card/views/ContentCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/card/views/ContentCardView;->a:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f0c005e

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/card/views/ContentCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/card/views/ContentCardView;->b:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/card/views/ContentCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/card/views/ContentCardView;->c:Lcom/wandoujia/image/view/AsyncImageView;

    .line 121
    const v0, 0x7f0c01ae

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/card/views/ContentCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/card/views/ContentCardView;->d:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0c0063

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/card/views/ContentCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/p4/card/views/ContentCardView;->e:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0c000a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/card/views/ContentCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/card/views/ContentCardView;->f:Landroid/widget/ImageView;

    .line 125
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/card/views/ContentCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/button/views/StatefulButton;

    iput-object v0, p0, Lcom/wandoujia/p4/card/views/ContentCardView;->g:Lcom/wandoujia/p4/button/views/StatefulButton;

    .line 126
    const v0, 0x7f0c0250

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/card/views/ContentCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/button/views/SubActionButton;

    iput-object v0, p0, Lcom/wandoujia/p4/card/views/ContentCardView;->h:Lcom/wandoujia/p4/button/views/SubActionButton;

    .line 131
    return-void
.end method
