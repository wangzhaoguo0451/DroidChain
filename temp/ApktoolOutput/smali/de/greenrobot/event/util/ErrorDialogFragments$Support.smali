.class public Lde/greenrobot/event/util/ErrorDialogFragments$Support;
.super Landroid/support/v4/app/DialogFragment;
.source "ErrorDialogFragments.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Lde/greenrobot/event/util/ErrorDialogFragments$Support;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lde/greenrobot/event/util/ErrorDialogFragments$Support;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Ld;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0}, Lde/greenrobot/event/util/ErrorDialogFragments$Support;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lde/greenrobot/event/util/ErrorDialogFragments$Support;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1, p0}, Ld;->a(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
