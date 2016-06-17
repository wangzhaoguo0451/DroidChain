.class public final Leku;
.super Ljava/lang/Object;
.source "SearchPopupFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ls;)V
    .locals 3
    .parameter

    .prologue
    .line 185
    if-eqz p0, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Ls;->a()Lag;

    move-result-object v0

    const v1, 0x7f0c02aa

    new-instance v2, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-direct {v2}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
