.class public final Lezs;
.super Ljava/lang/Object;
.source "AppLauncherFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lezs;->a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 99
    :pswitch_1
    iget-object v0, p0, Lezs;->a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lezs;->a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 107
    :pswitch_2
    iget-object v0, p0, Lezs;->a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    const-string v1, "search_type"

    sget-object v2, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->APP:Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;

    invoke-virtual {v2}, Lcom/wandoujia/launcher_base/app/SearchConst$SearchType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lezs;->a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;

    .line 114
    iget-object v1, p0, Lezs;->a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->a:Leku;

    iput-object v1, v0, Lcom/wandoujia/launcher_search/popup/fragment/SearchPopupFragment;->f:Leku;

    .line 115
    iget-object v1, p0, Lezs;->a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x7f0c02aa

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 117
    invoke-static {p1}, Lfam;->d(Landroid/view/View;)V

    goto :goto_0

    .line 122
    :pswitch_3
    iget-object v0, p0, Lezs;->a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    iget-object v1, p0, Lezs;->a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    const-string v3, "wdj://me/upgrade_apps"

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V

    .line 127
    invoke-static {p1}, Lfam;->b(Landroid/view/View;)V

    .line 128
    invoke-static {}, Ld;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Ld;->x()Lcom/wandoujia/base/utils/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/base/utils/Preferences;->edit()Lcom/wandoujia/base/utils/Preferences$CustomEditor;

    move-result-object v0

    const-string v1, "key_remind_upgrade"

    invoke-virtual {v0, v1, v4}, Lcom/wandoujia/base/utils/Preferences$CustomEditor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 130
    iget-object v0, p0, Lezs;->a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->a(Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lehx;->a(Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 136
    :pswitch_4
    iget-object v0, p0, Lezs;->a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    iget-object v1, p0, Lezs;->a:Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    const-string v3, "wdj://apps/explore"

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V

    .line 141
    invoke-static {p1}, Lfam;->c(Landroid/view/View;)V

    goto/16 :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0227
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
