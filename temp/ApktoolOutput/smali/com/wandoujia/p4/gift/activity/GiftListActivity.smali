.class public Lcom/wandoujia/p4/gift/activity/GiftListActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "GiftListActivity.java"


# instance fields
.field private a:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 57
    new-instance v0, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;-><init>()V

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string v2, "contentType"

    iget-object v3, p0, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->a:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 60
    const-string v2, "showMyGift"

    iget-object v3, p0, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    const-string v2, "giftType"

    iget-object v3, p0, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/gift/fragment/GiftListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x7f0c02aa

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 66
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/gift/activity/GiftListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v1, "contentType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "showMyGift"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v0, "contentType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->a:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    .line 81
    const-string v0, "showMyGift"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->b:Ljava/lang/Boolean;

    .line 82
    const-string v0, "giftType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->c:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "wdj://games/gifts"

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    const-string v0, "GAME"

    iput-object v0, p0, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->c:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->GAME:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->a:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    goto :goto_0

    .line 88
    :cond_2
    const-string v0, "wdj://apps/gifts"

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "APP"

    iput-object v0, p0, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->c:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->APP:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    iput-object v0, p0, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->a:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 99
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 100
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;->GAME:Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/wandoujia/p4/gift/activity/MyGiftBeansActivity;->a(Landroid/content/Context;Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;Z)V

    .line 104
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f0300cd

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->a(Landroid/content/Intent;)V

    .line 53
    invoke-direct {p0}, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->a()V

    .line 54
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->a(Landroid/content/Intent;)V

    .line 72
    invoke-direct {p0}, Lcom/wandoujia/p4/gift/activity/GiftListActivity;->a()V

    .line 73
    return-void
.end method
