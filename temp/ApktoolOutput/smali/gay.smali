.class public abstract Lgay;
.super Landroid/preference/PreferenceActivity;
.source "BaseSettingActivity.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Landroid/support/v7/widget/Toolbar;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lgay;->a:I

    return-void
.end method

.method private a(Landroid/preference/Preference;Ljava/lang/String;[I)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 173
    :cond_0
    :goto_0
    return v2

    .line 164
    :cond_1
    aget v0, p3, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, p3, v2

    .line 165
    instance-of v0, p1, Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_1
    move-object v0, p1

    .line 166
    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    move-object v0, p1

    .line 167
    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 168
    invoke-direct {p0, v0, p2, p3}, Lgay;->a(Landroid/preference/Preference;Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    .line 169
    goto :goto_0

    .line 166
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Ljava/lang/String;Z)V
.end method

.method public abstract b()Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 233
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 234
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {p0}, Lgay;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, p0, v3, p1}, Leny;->a(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 90
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f0301db

    invoke-virtual {p0, v0}, Lgay;->setContentView(I)V

    .line 92
    const v0, 0x7f0c007a

    invoke-virtual {p0, v0}, Lgay;->findViewById(I)Landroid/view/View;

    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lgay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lgay;->c:Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lgay;->findViewById(I)Landroid/view/View;

    const v0, 0x7f0c007c

    invoke-virtual {p0, v0}, Lgay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lgay;->d:Landroid/view/View;

    iget-object v0, p0, Lgay;->c:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgay;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lgay;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lgay;->c:Landroid/support/v7/widget/Toolbar;

    const v3, 0x7f020252

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    iget-object v0, p0, Lgay;->c:Landroid/support/v7/widget/Toolbar;

    const-string v3, "#24aa42"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    iget-object v0, p0, Lgay;->c:Landroid/support/v7/widget/Toolbar;

    const-string v3, "#ffffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    iget-object v0, p0, Lgay;->c:Landroid/support/v7/widget/Toolbar;

    new-instance v3, Lgaz;

    invoke-direct {v3, p0}, Lgaz;-><init>(Lgay;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgay;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgay;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lgay;->b()Lcom/wandoujia/p4/settings/SettingActivityHelper$SettingActivityLabel;

    .line 94
    invoke-virtual {p0}, Lgay;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lgay;->addPreferencesFromResource(I)V

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 97
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lgay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v3, Lcom/wandoujia/p4/settings/SettingActivityHelper;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-array v3, v2, [I

    aput v1, v3, v1

    invoke-virtual {p0}, Lgay;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-direct {p0, v4, v0, v3}, Lgay;->a(Landroid/preference/Preference;Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_2

    aget v0, v3, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgay;->a:I

    iput-boolean v2, p0, Lgay;->b:Z

    .line 98
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 95
    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lgay;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0}, Lgay;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0173

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lgay;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0171

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0, p0}, Leny;->a(Landroid/app/Activity;)V

    .line 227
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 228
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 210
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Leny;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 212
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 213
    invoke-virtual {p0, p1}, Lgay;->setIntent(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 205
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Z)V

    .line 206
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 240
    if-nez v1, :cond_0

    .line 241
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    .line 251
    :goto_0
    return v0

    .line 244
    :cond_0
    const/4 v0, 0x0

    .line 245
    instance-of v2, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 246
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 247
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 250
    :cond_1
    invoke-virtual {p0, v1, v0}, Lgay;->a(Ljava/lang/String;Z)V

    .line 251
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {p0}, Lgay;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Leny;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 186
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onRestart()V

    .line 187
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 192
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lg;->a(Landroid/view/View;Z)V

    .line 199
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 179
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0, p0}, Leny;->a(Landroid/content/Context;)V

    .line 180
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0, p0}, Leny;->b(Landroid/app/Activity;)V

    .line 220
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onUserLeaveHint()V

    .line 221
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onWindowFocusChanged(Z)V

    .line 146
    iget-boolean v0, p0, Lgay;->b:Z

    if-eqz v0, :cond_0

    .line 147
    iget v0, p0, Lgay;->a:I

    invoke-virtual {p0, v0}, Lgay;->setSelection(I)V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgay;->b:Z

    .line 150
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lgay;->c:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lgay;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lgay;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lgay;->c:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lgay;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    return-void
.end method
