.class public final Lcjh;
.super Ljava/lang/Object;
.source "AccountBaseFragment.java"

# interfaces
.implements Lcmg;


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/AccountBaseFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/fragment/AccountBaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcjh;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcjh;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcjh;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 532
    :cond_0
    iget-object v0, p0, Lcjh;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    invoke-virtual {v0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->c()V

    .line 533
    return-void
.end method

.method public final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 537
    iget-object v0, p0, Lcjh;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcjh;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 540
    :cond_0
    iget-object v0, p0, Lcjh;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    invoke-virtual {v0, p1}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->b(Lcom/wandoujia/account/dto/WandouResponse;)V

    .line 541
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 521
    iget-object v0, p0, Lcjh;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcjh;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/AccountBaseFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 524
    :cond_0
    iget-object v0, p0, Lcjh;->a:Lcom/wandoujia/account/fragment/AccountBaseFragment;

    invoke-virtual {v0, p1}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->d(Ljava/lang/String;)V

    .line 525
    return-void
.end method
