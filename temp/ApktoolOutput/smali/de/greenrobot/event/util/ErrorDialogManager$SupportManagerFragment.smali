.class public Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;
.super Landroid/support/v4/app/Fragment;
.source "ErrorDialogManager.java"


# instance fields
.field private a:Lhrx;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Laf;->m()Lhrx;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->a:Lhrx;

    .line 42
    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->a:Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->b:Z

    .line 44
    return-void
.end method

.method public onEventMainThread$109a46f2(Laf;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->getFragmentManager()Ls;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ls;->b()Z

    .line 73
    const-string v0, "de.greenrobot.eventbus.error_dialog"

    invoke-virtual {v1, v0}, Ls;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 74
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 79
    :cond_0
    invoke-static {p1}, Luu;->a(Laf;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 81
    if-eqz v0, :cond_1

    .line 82
    const-string v2, "de.greenrobot.eventbus.error_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Ls;Ljava/lang/String;)V

    .line 84
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->a:Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 61
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 62
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 49
    iget-boolean v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->b:Z

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->b:Z

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {}, Laf;->m()Lhrx;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->a:Lhrx;

    .line 54
    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;->a:Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
