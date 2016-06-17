.class final Ldxe;
.super Ljava/lang/Object;
.source "Toast.java"

# interfaces
.implements Lbtk;


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Ldxe;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nispok/snackbar/Snackbar;)V
    .locals 3
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Ldxe;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SettingsUtil;->jumpToAccessibilitySettings(Landroid/content/Context;)Z

    .line 127
    invoke-static {}, Lhgd;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ldxe;->a:Landroid/content/Context;

    const-class v2, Lcom/wandoujia/p4/app/activity/AppAutoInstallSettingPopupDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    iget-object v1, p0, Ldxe;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    :cond_0
    return-void
.end method
