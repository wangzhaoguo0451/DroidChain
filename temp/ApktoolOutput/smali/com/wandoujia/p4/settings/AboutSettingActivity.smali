.class public Lcom/wandoujia/p4/settings/AboutSettingActivity;
.super Lgay;
.source "AboutSettingActivity.java"


# instance fields
.field private a:Lcom/wandoujia/update/toolkit/UpdateClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lgay;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f060003

    return v0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0e0456

    .line 45
    const-string v0, "setting_about"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    new-instance v1, Lgqm;

    invoke-direct {v1, p0}, Lgqm;-><init>(Landroid/content/Context;)V

    iget-object v0, v1, Lgqm;->c:Lmu;

    invoke-virtual {v0}, Lmu;->a()Lmt;

    move-result-object v0

    invoke-virtual {v0}, Lmt;->show()V

    iput-object v0, v1, Lgqm;->b:Lmt;

    iget-object v0, v1, Lgqm;->d:Landroid/view/View;

    const v2, 0x7f0c01dc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v2, Lgxr;

    invoke-direct {v2}, Lgxr;-><init>()V

    new-instance v3, Lgqn;

    invoke-direct {v3, v1}, Lgqn;-><init>(Lgqm;)V

    invoke-virtual {v2, v0, v3}, Lgxr;->a(Landroid/view/View;Lgxu;)Lgxr;

    new-instance v0, Lgxr;

    invoke-direct {v0}, Lgxr;-><init>()V

    iget-object v2, v1, Lgqm;->d:Landroid/view/View;

    const v3, 0x7f0c01de

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lgqo;

    invoke-direct {v3, v1}, Lgqo;-><init>(Lgqm;)V

    invoke-virtual {v0, v2, v3}, Lgxr;->a(Landroid/view/View;Lgxu;)Lgxr;

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v0, "setting_update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/wandoujia/p4/settings/AboutSettingActivity;->a:Lcom/wandoujia/update/toolkit/UpdateClient;

    if-nez v0, :cond_2

    new-instance v0, Lcom/wandoujia/update/toolkit/UpdateClient;

    invoke-direct {v0}, Lcom/wandoujia/update/toolkit/UpdateClient;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/settings/AboutSettingActivity;->a:Lcom/wandoujia/update/toolkit/UpdateClient;

    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/settings/AboutSettingActivity;->a:Lcom/wandoujia/update/toolkit/UpdateClient;

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->d()Lcom/wandoujia/jupiter/JupiterApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/update/UpdateApplication;->c:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    invoke-virtual {v0, p0, v1}, Lcom/wandoujia/update/toolkit/UpdateClient;->a(Landroid/content/Context;Lcom/wandoujia/update/LocalUpdateService$UpdateParams;)V

    goto :goto_0

    .line 49
    :cond_3
    const-string v0, "setting_multimedia_legal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 51
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v1, "http://www.wandoujia.com/multimedia_legal.html"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/AboutSettingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/settings/AboutSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Ldxa;->b:I

    int-to-long v2, v1

    invoke-static {v0, v4, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    goto :goto_0

    .line 59
    :cond_4
    const-string v0, "setting_terms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v1, "http://www.wandoujia.com/terms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/AboutSettingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/settings/AboutSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Ldxa;->b:I

    int-to-long v2, v1

    invoke-static {v0, v4, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    goto :goto_0
.end method

.method protected final b()Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;->ABOUT:Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    return-object v0
.end method

.method public bridge synthetic onBackPressed()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Lgay;->onBackPressed()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wandoujia/p4/settings/AboutSettingActivity;->a:Lcom/wandoujia/update/toolkit/UpdateClient;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/wandoujia/p4/settings/AboutSettingActivity;->a:Lcom/wandoujia/update/toolkit/UpdateClient;

    invoke-virtual {v0}, Lcom/wandoujia/update/toolkit/UpdateClient;->b()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/settings/AboutSettingActivity;->a:Lcom/wandoujia/update/toolkit/UpdateClient;

    .line 78
    :cond_0
    invoke-super {p0}, Lgay;->onDestroy()V

    .line 79
    return-void
.end method

.method public bridge synthetic onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Lgay;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0}, Lgay;->onResume()V

    .line 36
    const-string v0, "setting_about"

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/settings/AboutSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0e0016

    invoke-virtual {p0, v2}, Lcom/wandoujia/p4/settings/AboutSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/wandoujia/base/utils/SystemUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 41
    :cond_0
    return-void
.end method

.method public bridge synthetic onWindowFocusChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Lgay;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public bridge synthetic setTitle(I)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Lgay;->setTitle(I)V

    return-void
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Lgay;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
