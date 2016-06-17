.class Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;
.super Lcom/wandoujia/p4/app/upgrade/UpgradeNotificationConfig;
.source "UpgradeNotifyCardGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const v4, 0x7f0e0654

    const v3, 0x7f0e05e5

    .line 660
    invoke-direct {p0}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotificationConfig;-><init>()V

    .line 661
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 663
    new-instance v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    invoke-direct {v1}, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;-><init>()V

    iput-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->oneAppText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    .line 664
    iget-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->oneAppText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    const v2, 0x7f0e05e1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->title:Ljava/lang/String;

    .line 665
    iget-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->oneAppText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    const v2, 0x7f0e05e0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->message:Ljava/lang/String;

    .line 666
    iget-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->oneAppText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->leftButton:Ljava/lang/String;

    .line 667
    iget-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->oneAppText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->rightButton:Ljava/lang/String;

    .line 669
    new-instance v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    invoke-direct {v1}, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;-><init>()V

    iput-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->multiAppText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    .line 670
    iget-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->multiAppText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    const v2, 0x7f0e05dd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->title:Ljava/lang/String;

    .line 671
    iget-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->multiAppText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    const v2, 0x7f0e05dc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->message:Ljava/lang/String;

    .line 672
    iget-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->multiAppText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->leftButton:Ljava/lang/String;

    .line 673
    iget-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->multiAppText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->rightButton:Ljava/lang/String;

    .line 675
    new-instance v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    invoke-direct {v1}, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;-><init>()V

    iput-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->preDownloadText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    .line 676
    iget-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->preDownloadText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    const v2, 0x7f0e05e3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->title:Ljava/lang/String;

    .line 677
    iget-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->preDownloadText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    const v2, 0x7f0e05e2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->message:Ljava/lang/String;

    .line 678
    iget-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->preDownloadText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->leftButton:Ljava/lang/String;

    .line 679
    iget-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->preDownloadText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->rightButton:Ljava/lang/String;

    .line 681
    new-instance v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    invoke-direct {v1}, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;-><init>()V

    iput-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->noNetworkText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    .line 682
    iget-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->noNetworkText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    const v2, 0x7f0e05df

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->title:Ljava/lang/String;

    .line 683
    iget-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->noNetworkText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    const v2, 0x7f0e05de

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->message:Ljava/lang/String;

    .line 684
    iget-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->noNetworkText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->leftButton:Ljava/lang/String;

    .line 685
    iget-object v1, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;->noNetworkText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->rightButton:Ljava/lang/String;

    .line 686
    return-void
.end method
