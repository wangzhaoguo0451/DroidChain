.class public Lcom/wandoujia/ripple_framework/view/AppAutoInstallTipsView;
.super Landroid/widget/LinearLayout;
.source "AppAutoInstallTipsView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/graphics/drawable/AnimationDrawable;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public getContentContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/AppAutoInstallTipsView;->d:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 42
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->content_container:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/AppAutoInstallTipsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/AppAutoInstallTipsView;->d:Landroid/view/View;

    .line 43
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->tips:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/AppAutoInstallTipsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/AppAutoInstallTipsView;->a:Landroid/widget/TextView;

    .line 44
    sget v0, Lcom/wandoujia/ripple_framework/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/view/AppAutoInstallTipsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/AppAutoInstallTipsView;->b:Landroid/widget/ImageView;

    .line 45
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/AppAutoInstallTipsView;->b:Landroid/widget/ImageView;

    sget v1, Lcom/wandoujia/ripple_framework/R$drawable;->auto_install_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 46
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/AppAutoInstallTipsView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/view/AppAutoInstallTipsView;->c:Landroid/graphics/drawable/AnimationDrawable;

    .line 47
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/AppAutoInstallTipsView;->c:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 48
    return-void
.end method

.method public setNum(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 51
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    sget v1, Lcom/wandoujia/ripple_framework/R$string;->app_auto_install_steps:I

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 54
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 56
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/view/AppAutoInstallTipsView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
