.class public final Ldje;
.super Lhic;
.source "AppUpgradeDescriptionPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method

.method static a(ZLcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/model/Model;->n()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    .line 84
    if-nez v2, :cond_0

    .line 85
    const-string v0, ""

    .line 139
    :goto_0
    return-object v0

    .line 88
    :cond_0
    if-nez v2, :cond_1

    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 89
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 90
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0e045e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 91
    const-string v1, "  "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 92
    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getNotRecommendReason()Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 93
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getRecommendedType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NOT_RECOMMEND"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_1

    .line 96
    :cond_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 97
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 100
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getImportantUpdate()Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    invoke-virtual {v5, v6, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    invoke-virtual {v5, v6, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xe

    invoke-virtual {v5, v6, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4}, Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;->getExpireTime()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-ltz v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_6

    .line 101
    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getImportantUpdate()Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;->getDetail()Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_4
    if-eqz p0, :cond_5

    .line 106
    const-string v4, "\n"

    const-string v5, "  "

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_5
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 109
    if-nez p0, :cond_6

    .line 110
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 115
    :cond_6
    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getChangeLog()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 117
    if-eqz p0, :cond_7

    .line 118
    const-string v4, "\n"

    const-string v5, "  "

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_7
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 121
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 122
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 127
    :cond_8
    if-nez p0, :cond_9

    .line 128
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 130
    :cond_9
    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getLastModifiedTime()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->isSuperior()Z

    move-result v4

    .line 132
    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getMarket()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const v5, 0x7f0e05c3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 134
    if-nez v4, :cond_a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 135
    const-string v0, "\t"

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const v4, 0x7f0e030c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 139
    :cond_a
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\n"

    const-string v2, "<br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0c022b

    const v6, 0x7f0c000d

    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    invoke-virtual {p0}, Ldje;->e()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/views/ExpandablePanel;

    .line 34
    invoke-virtual {p0}, Ldje;->f()Leri;

    move-result-object v1

    const v2, 0x7f0c0363

    invoke-virtual {v1, v2}, Leri;->b(I)Leri;

    move-result-object v1

    iget-object v1, v1, Leri;->a:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 36
    invoke-static {v5, p1}, Ldje;->a(ZLcom/wandoujia/ripple_framework/model/Model;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    invoke-virtual {v0, v3}, Lcom/wandoujia/p4/views/ExpandablePanel;->setVisibility(I)V

    .line 38
    invoke-virtual {p0}, Ldje;->d()Lerf;

    move-result-object v0

    iget-object v0, v0, Lerf;->a:Leri;

    invoke-virtual {v0, v7}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {v0, v4}, Lcom/wandoujia/p4/views/ExpandablePanel;->setVisibility(I)V

    .line 42
    invoke-virtual {p0}, Ldje;->d()Lerf;

    move-result-object v2

    iget-object v2, v2, Lerf;->a:Leri;

    invoke-virtual {v2, v7}, Leri;->b(I)Leri;

    move-result-object v2

    invoke-virtual {v2, v4}, Leri;->f(I)Leri;

    .line 43
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/views/ExpandablePanel;->setCollapseHeight(I)V

    .line 45
    new-instance v2, Ldjf;

    invoke-direct {v2, v1, p1}, Ldjf;-><init>(Landroid/widget/TextView;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/views/ExpandablePanel;->setExpandStateListener(Lgqb;)V

    .line 66
    invoke-virtual {v0, v4}, Lcom/wandoujia/p4/views/ExpandablePanel;->setExpanded(Z)V

    .line 67
    invoke-virtual {p1, v6}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 68
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    .line 69
    invoke-virtual {v0, v5}, Lcom/wandoujia/p4/views/ExpandablePanel;->setExpanded(Z)V

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p1, v6, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method
