.class public final Letk;
.super Ljava/lang/Object;
.source "AccountBaseFragment.java"

# interfaces
.implements Lcmg;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Letk;->a:Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Letk;-><init>(Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Letk;->a:Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Letk;->a:Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    iget-object v0, p0, Letk;->a:Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e044f

    sget v2, Ldxa;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 61
    :cond_2
    iget-object v0, p0, Letk;->a:Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Letk;->a:Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method public final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Letk;->a:Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Letk;->a:Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 71
    :cond_0
    iget-object v0, p0, Letk;->a:Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->a(Lcom/wandoujia/account/dto/WandouResponse;)V

    .line 72
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Letk;->a:Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Letk;->a:Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 46
    :cond_0
    iget-object v0, p0, Letk;->a:Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->a(Ljava/lang/String;)V

    .line 47
    return-void
.end method
