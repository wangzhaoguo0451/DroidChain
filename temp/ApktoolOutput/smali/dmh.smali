.class public final Ldmh;
.super Lhic;
.source "DirectSubtitleWithBadgePresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 5
    .parameter

    .prologue
    .line 17
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v0, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Ldmh;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 19
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 20
    invoke-static {p1}, Lg;->c(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    sget-object v4, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->VERIFIED:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    invoke-static {v3, v4}, Lg;->a(ILcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 24
    :cond_0
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    return-void
.end method
