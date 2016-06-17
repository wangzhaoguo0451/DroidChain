.class public final Lddg;
.super Ljava/lang/Object;
.source "IncompatibleDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lddg;->a:Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 75
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v1, Lddu;

    iget-object v2, p0, Lddg;->a:Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;

    invoke-static {v2}, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->a(Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;)Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lddu;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lddg;->a:Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/app/activity/IncompatibleDialogActivity;->onBackPressed()V

    .line 79
    return-void
.end method
