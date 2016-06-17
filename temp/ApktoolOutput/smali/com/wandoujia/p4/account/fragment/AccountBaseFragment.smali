.class public abstract Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "AccountBaseFragment.java"


# instance fields
.field public a:Landroid/app/ProgressDialog;

.field public b:Letk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 23
    new-instance v0, Letk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Letk;-><init>(Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;B)V

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->b:Letk;

    .line 36
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/wandoujia/account/dto/WandouResponse;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method protected final a(Ljava/lang/String;Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 78
    if-eqz p2, :cond_1

    .line 79
    :try_start_0
    invoke-virtual {p2}, Lcom/wandoujia/account/dto/WandouResponse;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const v0, 0x7f0e044f

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Leti;

    invoke-direct {v2}, Leti;-><init>()V

    invoke-static {v1, v0, p1, v2}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V

    .line 113
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e044f

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Letj;

    invoke-direct {v2}, Letj;-><init>()V

    invoke-static {v0, v1, p1, v2}, Ld;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcoh;

    move-result-object v0

    invoke-virtual {v0}, Lcoh;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/account/fragment/AccountBaseFragment;->a:Landroid/app/ProgressDialog;

    .line 34
    return-void
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method
