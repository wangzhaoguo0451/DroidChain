.class public Lcom/wandoujia/launcher_base/activity/LauncherBaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "LauncherBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/activity/LauncherBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Leny;->a(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 44
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0, p0}, Leny;->a(Landroid/app/Activity;)V

    .line 45
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 30
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/activity/LauncherBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Leny;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 31
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 23
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/launcher_base/activity/LauncherBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Leny;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 24
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserLeaveHint()V

    .line 37
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0, p0}, Leny;->b(Landroid/app/Activity;)V

    .line 38
    return-void
.end method
