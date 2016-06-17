.class public final Ldqy;
.super Lhic;
.source "VerifiedTitlePresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 4
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Ldqy;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 23
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 25
    invoke-static {p1}, Lg;->c(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->VERIFIED:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    invoke-static {v2, v3}, Lg;->a(ILcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 29
    invoke-virtual {p0}, Ldqy;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e05eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 32
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p0}, Ldqy;->e()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldqz;

    invoke-direct {v1, p0}, Ldqz;-><init>(Ldqy;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method
