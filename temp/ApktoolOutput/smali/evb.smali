.class public final Levb;
.super Ljava/lang/Object;
.source "AppAutoInstallSettingPopupDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/app/activity/AppAutoInstallSettingPopupDialogActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app/activity/AppAutoInstallSettingPopupDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Levb;->a:Lcom/wandoujia/p4/app/activity/AppAutoInstallSettingPopupDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Levb;->a:Lcom/wandoujia/p4/app/activity/AppAutoInstallSettingPopupDialogActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/app/activity/AppAutoInstallSettingPopupDialogActivity;->finish()V

    .line 22
    return-void
.end method
