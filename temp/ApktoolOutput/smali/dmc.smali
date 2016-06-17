.class public final Ldmc;
.super Lhic;
.source "DetailUpgradeInfoPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lhic;-><init>()V

    .line 135
    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0c0198

    const v4, 0x7f0c033e

    .line 40
    const v0, 0x7f0c002e

    invoke-virtual {p1, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 42
    invoke-virtual {p0}, Ldmc;->f()Leri;

    move-result-object v1

    const v2, 0x7f0c033d

    invoke-virtual {v1, v2}, Leri;->a(I)Leri;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Leri;->a(Ljava/lang/CharSequence;)Leri;

    .line 44
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->isPatchUpgradable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p0}, Ldmc;->f()Leri;

    move-result-object v1

    invoke-virtual {v1, v4}, Leri;->a(I)Leri;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullSize()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Leri;->a(Ljava/lang/CharSequence;)Leri;

    .line 47
    invoke-virtual {p0}, Ldmc;->f()Leri;

    move-result-object v1

    const v2, 0x7f0c033f

    invoke-virtual {v1, v2}, Leri;->a(I)Leri;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getPatchSize()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Leri;->a(Ljava/lang/CharSequence;)Leri;

    .line 49
    invoke-virtual {p0}, Ldmc;->f()Leri;

    move-result-object v1

    invoke-virtual {v1, v4}, Leri;->a(I)Leri;

    move-result-object v1

    iget-object v1, v1, Leri;->a:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 50
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 56
    :goto_0
    invoke-virtual {p0}, Ldmc;->f()Leri;

    move-result-object v1

    invoke-virtual {v1, v8}, Leri;->a(I)Leri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isUpgradable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v3, v1}, Leri;->a(Ljava/lang/CharSequence;)Leri;

    .line 58
    invoke-virtual {p0}, Ldmc;->f()Leri;

    move-result-object v1

    const v2, 0x7f0c0340

    invoke-virtual {v1, v2}, Leri;->a(I)Leri;

    move-result-object v1

    iget-object v1, v1, Leri;->a:Landroid/view/View;

    check-cast v1, Lcom/wandoujia/p4/views/ExpandablePanel;

    .line 60
    invoke-virtual {p0}, Ldmc;->f()Leri;

    move-result-object v2

    invoke-virtual {v2, v8}, Leri;->a(I)Leri;

    move-result-object v2

    iget-object v2, v2, Leri;->a:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    .line 61
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/views/ExpandablePanel;->setCollapseHeight(I)V

    .line 64
    invoke-virtual {p0}, Ldmc;->f()Leri;

    move-result-object v1

    const v2, 0x7f0c033c

    invoke-virtual {v1, v2}, Leri;->a(I)Leri;

    move-result-object v1

    iget-object v1, v1, Leri;->a:Landroid/view/View;

    check-cast v1, Landroid/widget/Spinner;

    .line 65
    new-instance v2, Ldme;

    invoke-virtual {p0}, Lerg;->e()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ldme;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 66
    new-instance v2, Ldmd;

    invoke-direct {v2, v0}, Ldmd;-><init>(Lcom/wandoujia/appmanager/LocalAppInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 88
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Ldmc;->f()Leri;

    move-result-object v1

    invoke-virtual {v1, v4}, Leri;->a(I)Leri;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullSize()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Leri;->a(Ljava/lang/CharSequence;)Leri;

    goto/16 :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isNotRecommendedUpgradable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getNotRecommendReason()Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/model/MarketAppInfo$NotRecommendReason;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->isImportantUpgradable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getImportantUpdate()Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;->getDetail()Ljava/lang/String;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getChangeLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_5
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getLastModifiedTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->isSuperior()Z

    move-result v5

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getMarket()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const v7, 0x7f0e05c3

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-nez v5, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "\t"

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const v5, 0x7f0e030c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    move-object v1, v2

    goto/16 :goto_1
.end method
