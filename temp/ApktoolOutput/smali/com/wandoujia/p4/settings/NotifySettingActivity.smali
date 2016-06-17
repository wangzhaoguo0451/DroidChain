.class public Lcom/wandoujia/p4/settings/NotifySettingActivity;
.super Lgay;
.source "NotifySettingActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lgay;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 13
    const v0, 0x7f060006

    return v0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    const-string v0, "setting_enable_push"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "setting_enable_push"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 26
    :cond_0
    return-void
.end method

.method protected final b()Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->NOTIFY:Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    return-object v0
.end method

.method public bridge synthetic onBackPressed()V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0}, Lgay;->onBackPressed()V

    return-void
.end method

.method public bridge synthetic onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lgay;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onWindowFocusChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 9
    invoke-super {p0, p1}, Lgay;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public bridge synthetic setTitle(I)V
    .locals 0
    .parameter

    .prologue
    .line 9
    invoke-super {p0, p1}, Lgay;->setTitle(I)V

    return-void
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 9
    invoke-super {p0, p1}, Lgay;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
