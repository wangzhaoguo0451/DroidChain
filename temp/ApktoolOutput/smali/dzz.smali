.class public final Ldzz;
.super Ljava/lang/Object;
.source "GameLauncherBlockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Ldzz;->a:Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    :try_start_0
    iget-object v1, p0, Ldzz;->a:Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Ldzz;->a:Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;

    invoke-static {v2}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;)Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldzz;->a:Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;

    invoke-static {v3}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;)Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ld;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/launcher/launcher/views/FloatingRocketView;

    move-result-object v0

    .line 103
    iget-object v1, p0, Ldzz;->a:Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;

    invoke-virtual {v1}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Ldzz;->a:Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;

    invoke-static {v2}, Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;->a(Lcom/wandoujia/launcher/launcher/fragments/GameLauncherBlockFragment;)Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/launcher/launcher/models/SimpleAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/wandoujia/launcher/launcher/utils/GameFolderUtil;->b(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method
