.class public Lcom/wandoujia/p4/gift/activity/MyGiftBeansActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MyGiftBeansActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/entities/app/IAppLiteInfo$AppType;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {}, Lchv;->z()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Lhoq;

    invoke-direct {v0, p0}, Lhoq;-><init>(Landroid/content/Context;)V

    .line 45
    const v1, 0x7f0e0350

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhoq;->a(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v1

    const v2, 0x7f0e034b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v1

    const v2, 0x7f0e0162

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lhoq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v1

    const v2, 0x7f0e00c5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfum;

    invoke-direct {v3}, Lfum;-><init>()V

    invoke-virtual {v1, v2, v3}, Lhoq;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v1

    const v2, 0x7f0e00c7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lful;

    invoke-direct {v3}, Lful;-><init>()V

    invoke-virtual {v1, v2, v3}, Lhoq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lhoq;

    .line 76
    invoke-virtual {v0}, Lhoq;->b()Lhoj;

    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/gift/activity/MyGiftBeansActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-ne p0, v1, :cond_2

    .line 82
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    :cond_2
    const-string v1, "argumentHeaderView"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    const-string v1, "argumentType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f0300cd

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/gift/activity/MyGiftBeansActivity;->setContentView(I)V

    .line 95
    new-instance v0, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;-><init>()V

    .line 96
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 97
    const-string v2, "argumentType"

    invoke-virtual {p0}, Lcom/wandoujia/p4/gift/activity/MyGiftBeansActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "argumentType"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 99
    const-string v2, "argumentHeaderView"

    invoke-virtual {p0}, Lcom/wandoujia/p4/gift/activity/MyGiftBeansActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "argumentHeaderView"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/gift/fragment/MyGiftListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/wandoujia/p4/gift/activity/MyGiftBeansActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x7f0c02aa

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 105
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    const-string v1, "wdj://me/gifts"

    invoke-virtual {v0, p0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/content/Context;)V

    .line 108
    return-void
.end method
