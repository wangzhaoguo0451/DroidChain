.class public final Lgbg;
.super Ljava/lang/Object;
.source "MainSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/wandoujia/p4/settings/MainSettingActivity;

.field private synthetic b:Landroid/widget/RadioButton;

.field private synthetic c:Landroid/widget/RadioButton;

.field private synthetic d:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/settings/MainSettingActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lgbg;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    iput-object p2, p0, Lgbg;->b:Landroid/widget/RadioButton;

    iput-object p3, p0, Lgbg;->c:Landroid/widget/RadioButton;

    iput-object p4, p0, Lgbg;->d:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 500
    iget-object v2, p0, Lgbg;->b:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    iget-object v2, p0, Lgbg;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    sget-object v3, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->AUTO:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    invoke-static {v2, v3}, Lcom/wandoujia/p4/settings/MainSettingActivity;->a(Lcom/wandoujia/p4/settings/MainSettingActivity;Lcom/wandoujia/base/utils/SystemUtil$InstallOption;)Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    .line 508
    :cond_0
    :goto_0
    iget-object v2, p0, Lgbg;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/settings/MainSettingActivity;->a(Lcom/wandoujia/p4/settings/MainSettingActivity;)Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->EXTERNAL:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    if-ne v2, v3, :cond_4

    invoke-static {}, Lcom/wandoujia/base/utils/SystemUtil;->isExternalSDCardMounted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 510
    invoke-static {p1, v0}, Lcom/wandoujia/p4/settings/MainSettingActivity;->a(Landroid/content/DialogInterface;Z)V

    .line 511
    iget-object v0, p0, Lgbg;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lgbg;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    new-instance v1, Lgbh;

    invoke-direct {v1, p0}, Lgbh;-><init>(Lgbg;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/settings/MainSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 525
    :cond_1
    :goto_1
    return-void

    .line 502
    :cond_2
    iget-object v2, p0, Lgbg;->c:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 503
    iget-object v2, p0, Lgbg;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    sget-object v3, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->EXTERNAL:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    invoke-static {v2, v3}, Lcom/wandoujia/p4/settings/MainSettingActivity;->a(Lcom/wandoujia/p4/settings/MainSettingActivity;Lcom/wandoujia/base/utils/SystemUtil$InstallOption;)Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    goto :goto_0

    .line 504
    :cond_3
    iget-object v2, p0, Lgbg;->d:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    iget-object v2, p0, Lgbg;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    sget-object v3, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->INTERNAL:Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    invoke-static {v2, v3}, Lcom/wandoujia/p4/settings/MainSettingActivity;->a(Lcom/wandoujia/p4/settings/MainSettingActivity;Lcom/wandoujia/base/utils/SystemUtil$InstallOption;)Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    goto :goto_0

    .line 521
    :cond_4
    iget-object v3, p0, Lgbg;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    iget-object v2, p0, Lgbg;->a:Lcom/wandoujia/p4/settings/MainSettingActivity;

    invoke-static {v2}, Lcom/wandoujia/p4/settings/MainSettingActivity;->a(Lcom/wandoujia/p4/settings/MainSettingActivity;)Lcom/wandoujia/base/utils/SystemUtil$InstallOption;

    move-result-object v4

    const/4 v2, -0x1

    sget-object v5, Lhlm;->a:[I

    invoke-virtual {v4}, Lcom/wandoujia/base/utils/SystemUtil$InstallOption;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    move v0, v2

    :goto_2
    :pswitch_0
    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "setting_root_install_location"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v2}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 523
    :cond_5
    invoke-static {p1, v1}, Lcom/wandoujia/p4/settings/MainSettingActivity;->a(Landroid/content/DialogInterface;Z)V

    goto :goto_1

    :pswitch_1
    move v0, v1

    .line 521
    goto :goto_2

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
