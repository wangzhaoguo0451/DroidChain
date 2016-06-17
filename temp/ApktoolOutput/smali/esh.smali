.class public final Lesh;
.super Ljava/lang/Object;
.source "AccountBaseActivity.java"

# interfaces
.implements Lcmg;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/account/activity/AccountBaseActivity;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/account/activity/AccountBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lesh;->a:Lcom/wandoujia/p4/account/activity/AccountBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/account/activity/AccountBaseActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lesh;-><init>(Lcom/wandoujia/p4/account/activity/AccountBaseActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lesh;->a:Lcom/wandoujia/p4/account/activity/AccountBaseActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lesh;->a:Lcom/wandoujia/p4/account/activity/AccountBaseActivity;

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    iget-object v0, p0, Lesh;->a:Lcom/wandoujia/p4/account/activity/AccountBaseActivity;

    const v1, 0x7f0e044f

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 58
    :cond_2
    iget-object v0, p0, Lesh;->a:Lcom/wandoujia/p4/account/activity/AccountBaseActivity;

    iget-object v0, v0, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lesh;->a:Lcom/wandoujia/p4/account/activity/AccountBaseActivity;

    iget-object v0, v0, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lesh;->a:Lcom/wandoujia/p4/account/activity/AccountBaseActivity;

    iget-object v0, v0, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lesh;->a:Lcom/wandoujia/p4/account/activity/AccountBaseActivity;

    iget-object v0, v0, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 68
    :cond_0
    iget-object v0, p0, Lesh;->a:Lcom/wandoujia/p4/account/activity/AccountBaseActivity;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->a(Lcom/wandoujia/account/dto/WandouResponse;)V

    .line 69
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lesh;->a:Lcom/wandoujia/p4/account/activity/AccountBaseActivity;

    iget-object v0, v0, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lesh;->a:Lcom/wandoujia/p4/account/activity/AccountBaseActivity;

    iget-object v0, v0, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 43
    :cond_0
    iget-object v0, p0, Lesh;->a:Lcom/wandoujia/p4/account/activity/AccountBaseActivity;

    invoke-virtual {v0}, Lcom/wandoujia/p4/account/activity/AccountBaseActivity;->a()V

    .line 44
    return-void
.end method
