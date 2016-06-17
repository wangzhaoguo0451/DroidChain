.class public final Ldpa;
.super Lhic;
.source "ListPresenterFactory.java"


# instance fields
.field private synthetic a:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 943
    iput-object p1, p0, Ldpa;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 8
    .parameter

    .prologue
    .line 947
    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->VIDEO:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 948
    invoke-virtual {p0}, Ldpa;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e05f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v0, v1, :cond_0

    .line 954
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {p0}, Ldpa;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 959
    invoke-static {p1}, Lg;->b(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->SPREAD:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 960
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 961
    iget-object v1, p0, Ldpa;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e0114

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v7

    iget-object v7, v7, Lcom/wandoujia/api/proto/AppDetail;->installed_count_str:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 964
    if-eqz v2, :cond_4

    .line 965
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/api/proto/AppDetail;->tagline:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 966
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->tagline:Ljava/lang/String;

    .line 975
    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 976
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 967
    :cond_3
    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 968
    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title:Ljava/lang/String;

    goto :goto_1

    .line 970
    :cond_4
    invoke-static {p1}, Lg;->c(Lcom/wandoujia/ripple_framework/model/Model;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 971
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    sget-object v4, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->VERIFIED:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    invoke-static {v2, v4}, Lg;->a(ILcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1
.end method
